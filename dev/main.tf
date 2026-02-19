module "rg_mod" {
  source = "../../modules/rg"
  rgs = var.rg_dev
}

# module "network_mod" {
#   source = "../../modules/network"
#   networks = var.network_dev
# }

module "acr_mod" {
  source = "../../modules/acr"
  acr = var.acr_dev
}

module "aks_mod" {
  source = "../../modules/aks_cluster"
  aks_cluster = var.aks_cluster_dev
}

module "server_mod" {
  source = "../../modules/azurerm_mssql_server"
  sql_server = var.mssql_server_dev
}

module "mssql_db_mod" {
  source = "../../modules/azurerm_mssql_database"
  mssql_db = var.mssql_db_dev
}