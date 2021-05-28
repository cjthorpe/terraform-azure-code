variable "cluster_name" {
  description = "Specifies the name of the Kusto Cluster to be created."
  type        = string
}

variable "data_format" {
  description = "Format of the data ingested into Kusto."
  type        = string
}

variable "database_name" {
  description = "The name of the Kusto database to create."
  type        = string
}

variable "data_export_rule_name" {
  description = "The name of the Log Analytics Data Export rule."
  type        = string
}

variable "environment" {
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "eventhub_consumer_group_name" {
  description = "Specifies the name of the EventHub Consumer Group resource."
  type        = string
}

variable "eventhub_data_connection_name" {
  description = "The name of the Kusto EventHub Data Connection to create."
  type        = string
}

variable "eventhub_message_retention" {
  description = "Specifies the number of days to retain the events for this Event Hub."
  type        = number
}

variable "eventhub_name" {
  description = "The name of the EventHub to be created."
  type        = string
}

variable "eventhub_partition_count" {
  description = "Specifies the current number of shards on the Event Hub. Changing this forces a new resource to be created."
  type        = number
}

variable "eventhub_namespace_capacity" {
  description = "Specifies the Capacity / Throughput Units for a Standard SKU namespace."
  type        = number
}

variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub will be created."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}

variable "log_analytics_wsp_name" {
  description = "The name of the log analytics workspace containing Sentinel. Used as a lookup for the ID of this workspace."
  type        = string
}

variable "mapping_rule_name" {
  description = "Name of the mapping rule implemented when ingestion into EventHub occurs."
  type        = string
}

variable "project_service" {
  description = "The name of the service."
  type        = string
}

variable "rg_name" {
  description = "The name to be used for this resource group."
  type        = string
}

variable "sentinel_resource_group_name" {
  description = "Name of the resource group containing the log analytics workspace (and Sentinel). Used as a lookup for the ID of this resource group."
  type        = string
}

variable "raw_table" {
  description = "Name of the intermediate table where raw data is first ingested."
  type        = string
}
