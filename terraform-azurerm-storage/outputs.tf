output "azurerm_storage_account" {
  value = {
    location = module.storage.azurerm_storage_account.location
    name     = module.storage.azurerm_storage_account.name
  }
}

output "azurerm_storage_tags" {
  value = {
    tags = module.storage.azurerm_storage_tags
  }
}

output "azurerm_storage_container" {
  value = {
    name = module.storage.azurerm_storage_container.name
  }
}
