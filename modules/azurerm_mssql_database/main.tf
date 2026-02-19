resource "azurerm_mssql_database" "mssqldb" {
  for_each     = var.mssql_db
  name         = each.value.name
  server_id    = data.azurerm_mssql_server.server_data[each.key].id
  collation    = each.value.collation    #"SQL_Latin1_General_CP1_CI_AS"
  license_type = each.value.license_type #"LicenseIncluded"
  max_size_gb  = each.value.max_size_gb  #2
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type
}
