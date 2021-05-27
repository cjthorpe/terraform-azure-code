resource "azurerm_virtual_network" "bastion_vnet" {
  address_space       = var.bastion_vnet_address_space
  location            = azurerm_resource_group.rg.location
  name                = var.bastion_vnet_name
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "bastion_subnet" {
  address_prefixes     = var.bastion_subnet_address_prefixes
  name                 = var.bastion_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.bastion_vnet.name
}

resource "azurerm_subnet" "vm_subnet" {
  address_prefixes     = var.vm_subnet_prefixes
  name                 = var.vm_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.bastion_vnet.name
}

resource "azurerm_public_ip" "pip" {
  allocation_method   = var.public_ip_allocation_method
  location            = azurerm_resource_group.rg.location
  name                = var.public_ip_name
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = var.public_ip_sku
}

resource "azurerm_bastion_host" "bastion" {
  ip_configuration {
    name                 = var.bastion_ip_config_name
    public_ip_address_id = azurerm_public_ip.pip.id
    subnet_id            = azurerm_subnet.bastion_subnet.id
  }
  location            = azurerm_resource_group.rg.location
  name                = var.bastion_host_name
  resource_group_name = azurerm_resource_group.rg.name
}

