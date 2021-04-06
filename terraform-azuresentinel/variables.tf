variable "environment" {
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}

variable "log_analytics_wsp_name" {
  description = "The name of the log analytics workspace."
  type        = string
}

variable "project_service" {
  description = "The name of the service."
  type        = string
}

variable "retention_in_days" {
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or between 30 and 730."
  type        = string
}

variable "rg_name" {
  description = "The name to be used for this resource group."
  type        = string
}

variable "sku" {
  description = "Specifies the Sku of the Log Analytics Workspace."
  type        = string
}
