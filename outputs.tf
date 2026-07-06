output "frontdoor_firewall_policies" {
  description = "All frontdoor_firewall_policy resources"
  value       = azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies
}
output "frontdoor_firewall_policies_custom_block_response_body" {
  description = "List of custom_block_response_body values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.custom_block_response_body]
}
output "frontdoor_firewall_policies_custom_block_response_status_code" {
  description = "List of custom_block_response_status_code values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.custom_block_response_status_code]
}
output "frontdoor_firewall_policies_custom_rule" {
  description = "List of custom_rule values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.custom_rule]
}
output "frontdoor_firewall_policies_enabled" {
  description = "List of enabled values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.enabled]
}
output "frontdoor_firewall_policies_frontend_endpoint_ids" {
  description = "List of frontend_endpoint_ids values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.frontend_endpoint_ids]
}
output "frontdoor_firewall_policies_location" {
  description = "List of location values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.location]
}
output "frontdoor_firewall_policies_managed_rule" {
  description = "List of managed_rule values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.managed_rule]
}
output "frontdoor_firewall_policies_mode" {
  description = "List of mode values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.mode]
}
output "frontdoor_firewall_policies_name" {
  description = "List of name values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.name]
}
output "frontdoor_firewall_policies_redirect_url" {
  description = "List of redirect_url values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.redirect_url]
}
output "frontdoor_firewall_policies_resource_group_name" {
  description = "List of resource_group_name values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.resource_group_name]
}
output "frontdoor_firewall_policies_tags" {
  description = "List of tags values across all frontdoor_firewall_policies"
  value       = [for k, v in azurerm_frontdoor_firewall_policy.frontdoor_firewall_policies : v.tags]
}

