rg_dev = {
    rg1 = {
        name = "rg_poc_1"
        location = "west europe"
    }
}

acr_dev = {
    acr1 = {
        name = "acr_poc_1"
        resource_group_name = "rg_poc"
        location = "west europe"
        sku = "Premium"
        admin_enabled = true
    }
}

aks_cluster_dev = {
    cluster1 = {
        name = "aks_poc_1"
        location = "west europe"
        resource_group_name = "rg_poc_1"
        dns_prefix = "todo_portal_1"
        default_node_pool = {
            node_pool1 = {
                name = "default"
                node_count = 2
                vm_size = "Standard_D2s_v5"
            }   
        }
    }
}