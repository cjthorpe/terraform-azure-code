resource "azurerm_resource_group" "block" {
  location = var.location
  name     = var.rg_name

  tags = module.tags.tags
}

resource "azurerm_log_analytics_solution" "block" {
  location = azurerm_resource_group.block.location
  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }
  resource_group_name   = azurerm_resource_group.block.name
  solution_name         = "SecurityInsights"
  workspace_name        = azurerm_log_analytics_workspace.block.name
  workspace_resource_id = azurerm_log_analytics_workspace.block.id
}

resource "azurerm_log_analytics_workspace" "block" {
  location            = azurerm_resource_group.block.location
  name                = var.log_analytics_wsp_name
  resource_group_name = azurerm_resource_group.block.name
  retention_in_days   = var.retention_in_days
  sku                 = var.sku
  tags                = module.tags.tags
}
