terraform {
  backend "azurerm" {
    container_name       = "terraformstate"
    key                  = "azurekusto.tfstate"
    resource_group_name  = "sentinel-rg-prd"
    storage_account_name = "sentinelstore"
  }
}
