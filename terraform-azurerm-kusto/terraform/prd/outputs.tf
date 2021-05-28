output "azurerm_eventhub_namespace" {
  description = "The EventHub Namespace ID."
  value = {
    id   = azurerm_eventhub_namespace.eventhub_ns.id
    name = azurerm_eventhub_namespace.eventhub_ns.name
  }
}

output "azurerm_eventhub_consumer_group" {
  description = "The EventHub consumer group within an EventHub."
  value = {
    id   = azurerm_eventhub_consumer_group.eventhub_cg.id
    name = azurerm_eventhub_consumer_group.eventhub_cg.name
  }
}

output "azurerm_eventhub" {
  description = "The EventHub."
  value = {
    id   = azurerm_eventhub.ev-am.id
    name = azurerm_eventhub.ev-am.name
  }
}

output "azurerm_kusto_eventhub_data_connection" {
  description = "The connection between the EventHub and Log Analytics workspace."
  value = {
    id   = azurerm_kusto_eventhub_data_connection.eventhub_connection.id
    name = azurerm_kusto_eventhub_data_connection.eventhub_connection.name
  }
}

output "azurerm_kusto_tags" {
  description = "The mandatory tags used for Azure infrastructure and resources."
  value       = module.tags.tags
}

output "azurerm_resource_group" {
  description = "AzureRM resource group name and location."
  value = {
    location = data.azurerm_resource_group.rg.location
    name     = data.azurerm_resource_group.rg.name
  }
}

