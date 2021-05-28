resource "azurerm_eventhub_namespace" "eventhub_ns" {
  capacity            = var.eventhub_namespace_capacity
  location            = data.azurerm_resource_group.rg.location
  name                = var.eventhub_namespace_name
  resource_group_name = data.azurerm_resource_group.rg.name
  sku                 = "Standard"
  tags                = module.tags.tags
}

resource "azurerm_eventhub" "ev-am" {
  message_retention   = var.eventhub_message_retention
  name                = "am-syslog"
  namespace_name      = azurerm_eventhub_namespace.eventhub_ns.name
  partition_count     = var.eventhub_partition_count
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_eventhub_consumer_group" "eventhub_cg" {
  eventhub_name       = azurerm_eventhub.ev-am.name
  name                = var.eventhub_consumer_group_name
  namespace_name      = azurerm_eventhub_namespace.eventhub_ns.name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_kusto_eventhub_data_connection" "eventhub_connection" {
  cluster_name        = azurerm_kusto_cluster.cluster.name
  consumer_group      = azurerm_eventhub_consumer_group.eventhub_cg.name
  data_format         = var.data_format
  database_name       = azurerm_kusto_database.database.name
  eventhub_id         = azurerm_eventhub.ev-am.id
  location            = data.azurerm_resource_group.rg.location
  mapping_rule_name   = var.mapping_rule_name
  name                = var.eventhub_data_connection_name
  resource_group_name = data.azurerm_resource_group.rg.name
  table_name          = var.raw_table
}
