resource "azurerm_frontdoor_firewall_policy" "frontdoor_firewall_policies" {
  for_each = var.frontdoor_firewall_policies

  name                              = each.value.name
  resource_group_name               = each.value.resource_group_name
  custom_block_response_body        = each.value.custom_block_response_body
  custom_block_response_status_code = each.value.custom_block_response_status_code
  enabled                           = each.value.enabled
  mode                              = each.value.mode
  redirect_url                      = each.value.redirect_url
  tags                              = each.value.tags

  dynamic "custom_rule" {
    for_each = each.value.custom_rule != null ? each.value.custom_rule : []
    content {
      action  = custom_rule.value.action
      enabled = custom_rule.value.enabled
      dynamic "match_condition" {
        for_each = custom_rule.value.match_condition != null ? custom_rule.value.match_condition : []
        content {
          match_values       = match_condition.value.match_values
          match_variable     = match_condition.value.match_variable
          negation_condition = match_condition.value.negation_condition
          operator           = match_condition.value.operator
          selector           = match_condition.value.selector
          transforms         = match_condition.value.transforms
        }
      }
      name                           = custom_rule.value.name
      priority                       = custom_rule.value.priority
      rate_limit_duration_in_minutes = custom_rule.value.rate_limit_duration_in_minutes
      rate_limit_threshold           = custom_rule.value.rate_limit_threshold
      type                           = custom_rule.value.type
    }
  }

  dynamic "managed_rule" {
    for_each = each.value.managed_rule != null ? each.value.managed_rule : []
    content {
      dynamic "exclusion" {
        for_each = managed_rule.value.exclusion != null ? managed_rule.value.exclusion : []
        content {
          match_variable = exclusion.value.match_variable
          operator       = exclusion.value.operator
          selector       = exclusion.value.selector
        }
      }
      dynamic "override" {
        for_each = managed_rule.value.override != null ? managed_rule.value.override : []
        content {
          dynamic "exclusion" {
            for_each = override.value.exclusion != null ? override.value.exclusion : []
            content {
              match_variable = exclusion.value.match_variable
              operator       = exclusion.value.operator
              selector       = exclusion.value.selector
            }
          }
          dynamic "rule" {
            for_each = override.value.rule != null ? override.value.rule : []
            content {
              action  = rule.value.action
              enabled = rule.value.enabled
              dynamic "exclusion" {
                for_each = rule.value.exclusion != null ? rule.value.exclusion : []
                content {
                  match_variable = exclusion.value.match_variable
                  operator       = exclusion.value.operator
                  selector       = exclusion.value.selector
                }
              }
              rule_id = rule.value.rule_id
            }
          }
          rule_group_name = override.value.rule_group_name
        }
      }
      type    = managed_rule.value.type
      version = managed_rule.value.version
    }
  }
}

