module "rg_mod" {
  source = "../modules/rg"
  rgs = var.rg_dev
}

# module "network_mod" {
#   source = "../../modules/network"
#   networks = var.network_dev
# }

module "acr_mod" {
  depends_on = [ module.rg_mod ]
  source = "../modules/acr"
  acr = var.acr_dev
}

module "aks_mod" {
  depends_on = [ module.rg_mod, module.acr_mod ]
  source = "../modules/aks_cluster"
  aks_cluster = var.aks_cluster_dev
}

# module "server_mod" {
#   source = "../../modules/azurerm_mssql_server"
#   sql_server = var.mssql_server_dev
# }

module "aks_acr_pull_mod" {
  depends_on = [ module.rg_mod, module.acr_mod, module.aks_mod ]
  source = "../modules/aks_acr_role"
  aks_acr_pull = var.aks_acr_pull_dev
}