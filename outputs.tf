output "frontdoor_firewall_policies_custom_block_response_body" {
  description = "Map of custom_block_response_body values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_block_response_body }
}
output "frontdoor_firewall_policies_custom_block_response_status_code" {
  description = "Map of custom_block_response_status_code values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_block_response_status_code }
}
output "frontdoor_firewall_policies_custom_rule" {
  description = "Map of custom_rule values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.custom_rule }
}
output "frontdoor_firewall_policies_enabled" {
  description = "Map of enabled values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.enabled }
}
output "frontdoor_firewall_policies_frontend_endpoint_ids" {
  description = "Map of frontend_endpoint_ids values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.frontend_endpoint_ids }
}
output "frontdoor_firewall_policies_location" {
  description = "Map of location values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.location }
}
output "frontdoor_firewall_policies_managed_rule" {
  description = "Map of managed_rule values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.managed_rule }
}
output "frontdoor_firewall_policies_mode" {
  description = "Map of mode values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.mode }
}
output "frontdoor_firewall_policies_name" {
  description = "Map of name values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.name }
}
output "frontdoor_firewall_policies_redirect_url" {
  description = "Map of redirect_url values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.redirect_url }
}
output "frontdoor_firewall_policies_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.resource_group_name }
}
output "frontdoor_firewall_policies_tags" {
  description = "Map of tags values across all frontdoor_firewall_policies, keyed the same as var.frontdoor_firewall_policies"
  value       = { for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : k => v.tags }
}

