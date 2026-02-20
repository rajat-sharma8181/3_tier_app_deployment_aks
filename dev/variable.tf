variable "rg_dev" {
  type = map(object({
    name     = string
    location = string
  }))
}

# variable "network_dev" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     address_space       = optional(list(string))
#     subnets = optional(map(object({
#       name             = string
#       address_prefixes = list(string)
#     })), {})
#   }))
# }

variable "acr_dev" {
    type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
  }))
}

variable "aks_cluster_dev" {
    type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    default_node_pool = map(object({
      name       = string
      node_count = number
      vm_size    = string
    }))
  }))
}

# variable "mssql_server_dev" {
#     type = map(object({
#     name                         = string
#     resource_group_name          = string
#     location                     = string
#     administrator_login          = string
#     administrator_login_password = string
#   }))
# }

# variable "mssql_db_dev" {
#     type = map(object({
#     name         = string
#     collation    = optional(string)
#     license_type = optional(string)
#     max_size_gb  = optional(number)
#     sku_name     = optional(string)
#     enclave_type = optional(string)
#   }))
# }