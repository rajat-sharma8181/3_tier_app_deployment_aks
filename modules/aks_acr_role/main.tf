resource "azurerm_role_assignment" "acr_pull" {
    for_each = var.aks_acr_pull
  scope                = data.azurerm_container_registry.acr_data[0].id
  role_definition_name = each.value.role_definition_name
  principal_id         = data.azurerm_kubernetes_cluster.aks_data[0].object_id
}