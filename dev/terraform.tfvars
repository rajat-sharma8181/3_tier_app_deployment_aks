rg_dev = {
  rg1 = {
    name     = "rg_poc_1"
    location = "west europe"
  }
}

acr_dev = {
  acr1 = {
    name                = "nitorAcrPoc1"
    resource_group_name = "rg_poc_1"
    location            = "west europe"
    sku                 = "Premium"
    admin_enabled       = true
  }
}

aks_cluster_dev = {
  cluster1 = {
    name                = "nitorAksPoc1"
    location            = "west europe"
    resource_group_name = "rg_poc_1"
    dns_prefix          = "todo-portal-1"
    default_node_pool = {
      node_pool1 = {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_D2s_v5"
      }
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}

aks_acr_pull_dev = {
  acr_pull_1 = {
    role_definition_name = "AcrPull"
    aks_name = "nitoAksPoc1"
    acr_name = "nitorAcrPoc1"
    resource_group_name = "rg_poc_1"
  }
}