terraform {
  backend "azurerm" {
    container_name       = "terraformstate"
    key                  = "azuredevops.tfstate"
    resource_group_name  = "sentinel-rg-prd"
    storage_account_name = "sentinelstore"
  }
}
