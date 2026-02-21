variable "aks_acr_pull" {
  type = map(object({
    role_definition_name = string
    aks_name = string
    acr_name = string
    resource_group_name = string
  }))
}