output "frontdoor_firewall_policies_id" {
  description = "Map of id values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "frontdoor_firewall_policies_custom_block_response_body" {
  description = "Map of custom_block_response_body values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_block_response_body if v.custom_block_response_body != null && length(v.custom_block_response_body) > 0 }
}
output "frontdoor_firewall_policies_custom_block_response_status_code" {
  description = "Map of custom_block_response_status_code values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_block_response_status_code if v.custom_block_response_status_code != null }
}
output "frontdoor_firewall_policies_custom_rule" {
  description = "Map of custom_rule values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_rule if v.custom_rule != null && length(v.custom_rule) > 0 }
}
output "frontdoor_firewall_policies_enabled" {
  description = "Map of enabled values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.enabled if v.enabled != null }
}
output "frontdoor_firewall_policies_frontend_endpoint_ids" {
  description = "Map of frontend_endpoint_ids values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.frontend_endpoint_ids if v.frontend_endpoint_ids != null && length(v.frontend_endpoint_ids) > 0 }
}
output "frontdoor_firewall_policies_location" {
  description = "Map of location values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "frontdoor_firewall_policies_managed_rule" {
  description = "Map of managed_rule values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.managed_rule if v.managed_rule != null && length(v.managed_rule) > 0 }
}
output "frontdoor_firewall_policies_mode" {
  description = "Map of mode values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "frontdoor_firewall_policies_name" {
  description = "Map of name values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "frontdoor_firewall_policies_redirect_url" {
  description = "Map of redirect_url values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}
output "frontdoor_firewall_policies_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "frontdoor_firewall_policies_tags" {
  description = "Map of tags values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

