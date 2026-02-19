data "azurerm_mssql_server" "server_data" {
  for_each            = var.mssql_db
  name                = each.value.server_name
  resource_group_name = each.value.resource_group_name
}
