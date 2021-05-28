data "azurerm_resource_group" "rg" {
  name = var.sentinel_resource_group_name
}

data "azurerm_log_analytics_workspace" "law" {
  name                = var.log_analytics_wsp_name
  resource_group_name = var.sentinel_resource_group_name
}
