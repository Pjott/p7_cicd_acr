output "aks_principal_id" {
  value = azurerm_role_assignment.aks_acr_pull.principal_id
}