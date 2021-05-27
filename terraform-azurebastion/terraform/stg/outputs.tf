output "azurerm_resource_group" {
  description = "AzureRM resource group name and location."
  value = {
    location = azurerm_resource_group.rg.location
    name     = azurerm_resource_group.rg.name
  }
}

output "azurerm_dev_test_lab" {
  description = "AzureRM Dev Test Lab."
  value = {
    id                = azurerm_dev_test_lab.lab.id
    storage_account   = azurerm_dev_test_lab.lab.default_storage_account_id
    unique_identifier = azurerm_dev_test_lab.lab.unique_identifier
  }
}

