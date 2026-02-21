terraform {
  backend "azurerm" {
    resource_group_name = "rg_backend_block"
    storage_account_name = "backsg"                              
    container_name       = "backendcontainer"                               
    key                  = "dev.terraform.tfstate"                
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.60.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id = "983c99f2-6e09-45df-bbf3-b94a4d7e5a84"
}