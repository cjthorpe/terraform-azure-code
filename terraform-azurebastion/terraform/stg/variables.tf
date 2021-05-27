variable "bastion_host_name" {
  description = "Name of the Bastion host through which VMs are accessed via browser."
  type        = string
}

variable "bastion_ip_config_name" {
  description = "The name of the Bastion IP configuration."
  type = string
}

variable "bastion_subnet_address_prefixes" {
  description = "Subnet CIDR range for the Azure Bastion subnet."
  type        = list(string)
}

variable "bastion_subnet_name" {
  description = "Name of the Azure Bastion subnet - non-Bastion resources are not permitted."
  type        = string
}

variable "bastion_vnet_address_space" {
  description = "CIDR range for the Bastion virtual network."
  type        = list(string)
}

variable "bastion_vnet_name" {
  description = "Name of the Bastion virtual network."
  type        = string
}

variable "dev_test_lab_name" {
  description = "Specifies the name of the Dev Test Lab."
  type        = string
}

variable "environment" {
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}

variable "project_service" {
  description = "The name of the service."
  type        = string
}

variable "public_ip_allocation_method" {
  description = "Allocation type for the Public IP - static / dynamic."
  type        = string
}

variable "public_ip_name" {
  description = "Name of the public IP associated with the Bastion host."
  type        = string
}

variable "public_ip_sku" {
  description = "Public IP SKU."
  type        = string
}

variable "rg_name" {
  description = "The name to be used for this resource group."
  type        = string
}

variable "vm_subnet_prefixes" {
  description = "CIDR range for the subnet housing the VMs."
  type        = list(string)
}

variable "vm_subnet_name" {
  description = "Name of the VM subnet."
  type        = string
}

