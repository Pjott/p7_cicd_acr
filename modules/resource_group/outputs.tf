output "rg_id" {
  value = azurerm_resource_group.rg.id
  description = "resource group ID"
}

output "rg_name" {
  value       = azurerm_resource_group.rg.name
  description = "rg name"
}