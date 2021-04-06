output "azurerm_resource_group" {
  description = "AzureRM resource group name and location."
  value = {
    location = azurerm_resource_group.block.location
    name = azurerm_resource_group.block.name
  }
}

output "azurerm_log_analytics_solution" {
  description = "Azure RM Log Analytics Solution."
  value = {
    location = azurerm_log_analytics_solution.block.location
    plan = azurerm_log_analytics_solution.block.plan[0].product
    resource_group_name = azurerm_log_analytics_solution.block.resource_group_name
    workspace_name = azurerm_log_analytics_solution.block.workspace_name
  }
}

output "azurerm_log_analytics_workspace" {
  description = "Azure RM Log Analytics Workspace."
  value = {
    location = azurerm_log_analytics_workspace.block.location
    name = azurerm_log_analytics_workspace.block.name
    resource_group_name = azurerm_log_analytics_workspace.block.resource_group_name
  }
}

output "azurerm_log_analytics_tags" {
  description = "The mandatory tags used for Azure infrastructure and resources." 
  value = module.tags.tags
}
