resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

resource "azurerm_dev_test_lab" "lab" {
  location            = azurerm_resource_group.rg.location
  name                = var.dev_test_lab_name
  resource_group_name = azurerm_resource_group.rg.name
  tags                = module.tags.tags
}

