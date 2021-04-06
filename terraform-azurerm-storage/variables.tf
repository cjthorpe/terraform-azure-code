variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account."
  type        = string
}

variable "account_tier" {
  description = "Defines the tier to use for this storage account."
  type        = string
}

variable "container_access_type" {
  description = "The Access Level configured for this Container."
  type        = string
}

variable "environment" {
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "project_service" {
  description = "The name of the service."
  type        = string
}

variable "region" {
  description = "The Azure region where the infrastructure is hosted."
  type        = string
}

variable "resource_group_name" {
  description = "The name to use for this resource group."
  type        = string
}

variable "storage_account_name" {
  description = "Specifies the name of the storage account."
  type        = string
}

variable "storage_container_name" {
  description = "The name of the Container which should be created within the Storage Account."
  type        = string
}
