terraform {
  backend "azurerm" {
    container_name       = "terraformstate"
    key                  = "azurebastion.tfstate"
    resource_group_name  = "my-sentinel-rg-stg"
    storage_account_name = "sentinelstorestg"
  }
}
