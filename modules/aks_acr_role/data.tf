data "azurerm_kubernetes_cluster" "aks_data" {
    for_each = var.aks_acr_pull
  name                = each.value.aks_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_container_registry" "acr_data" {
    for_each = var.aks_acr_pull
  name                = each.value.acr_name
  resource_group_name = each.value.resource_group_name
}