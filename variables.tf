variable "frontdoor_firewall_policies" {
  description = <<EOT
Map of frontdoor_firewall_policies, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - custom_block_response_body
    - custom_block_response_status_code
    - enabled
    - mode
    - redirect_url
    - tags
    - custom_rule (block):
        - action (required)
        - enabled (optional)
        - match_condition (optional, block):
            - match_values (required)
            - match_variable (required)
            - negation_condition (optional)
            - operator (required)
            - selector (optional)
            - transforms (optional)
        - name (required)
        - priority (optional)
        - rate_limit_duration_in_minutes (optional)
        - rate_limit_threshold (optional)
        - type (required)
    - managed_rule (block):
        - exclusion (optional, block):
            - match_variable (required)
            - operator (required)
            - selector (required)
        - override (optional, block):
            - exclusion (optional, block):
                - match_variable (required)
                - operator (required)
                - selector (required)
            - rule (optional, block):
                - action (required)
                - enabled (optional)
                - exclusion (optional, block):
                    - match_variable (required)
                    - operator (required)
                    - selector (required)
                - rule_id (required)
            - rule_group_name (required)
        - type (required)
        - version (required)
EOT

  type = map(object({
    name                              = string
    resource_group_name               = string
    custom_block_response_body        = optional(string)
    custom_block_response_status_code = optional(number)
    enabled                           = optional(bool)   # Default: true
    mode                              = optional(string) # Default: "Prevention"
    redirect_url                      = optional(string)
    tags                              = optional(map(string))
    custom_rule = optional(list(object({
      action  = string
      enabled = optional(bool) # Default: true
      match_condition = optional(list(object({
        match_values       = list(string)
        match_variable     = string
        negation_condition = optional(bool) # Default: false
        operator           = string
        selector           = optional(string)
        transforms         = optional(list(string))
      })))
      name                           = string
      priority                       = optional(number) # Default: 1
      rate_limit_duration_in_minutes = optional(number) # Default: 1
      rate_limit_threshold           = optional(number) # Default: 10
      type                           = string
    })))
    managed_rule = optional(list(object({
      exclusion = optional(list(object({
        match_variable = string
        operator       = string
        selector       = string
      })))
      override = optional(list(object({
        exclusion = optional(list(object({
          match_variable = string
          operator       = string
          selector       = string
        })))
        rule = optional(list(object({
          action  = string
          enabled = optional(bool) # Default: false
          exclusion = optional(list(object({
            match_variable = string
            operator       = string
            selector       = string
          })))
          rule_id = string
        })))
        rule_group_name = string
      })))
      type    = string
      version = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.custom_rule == null || (length(v.custom_rule) <= 100)
      )
    ])
    error_message = "Each custom_rule list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.custom_rule == null || alltrue([for item in v.custom_rule : (item.match_condition == null || (length(item.match_condition) <= 10))])
      )
    ])
    error_message = "Each match_condition list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || (length(v.managed_rule) <= 100)
      )
    ])
    error_message = "Each managed_rule list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || alltrue([for item in v.managed_rule : (item.exclusion == null || (length(item.exclusion) <= 100))])
      )
    ])
    error_message = "Each exclusion list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || alltrue([for item in v.managed_rule : (item.override == null || (length(item.override) <= 100))])
      )
    ])
    error_message = "Each override list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || alltrue([for item in v.managed_rule : (item.exclusion == null || (length(item.exclusion) <= 100))])
      )
    ])
    error_message = "Each exclusion list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || alltrue([for item in v.managed_rule : (item.rule == null || (length(item.rule) <= 1000))])
      )
    ])
    error_message = "Each rule list must contain at most 1000 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoor_firewall_policies : (
        v.managed_rule == null || alltrue([for item in v.managed_rule : (item.exclusion == null || (length(item.exclusion) <= 100))])
      )
    ])
    error_message = "Each exclusion list must contain at most 100 items"
  }
}

