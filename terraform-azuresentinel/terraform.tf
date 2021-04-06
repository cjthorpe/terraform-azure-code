terraform {
  backend "azurerm" {
    container_name       = "terraformstate"
    key                  = "azuresentinel.tfstate"
    resource_group_name  = "sentinel-rg-prd"
    storage_account_name = "sentinelstore"
  }
}
