resource "azurerm_kusto_cluster" "cluster" {
  location            = data.azurerm_resource_group.rg.location
  name                = var.cluster_name
  resource_group_name = data.azurerm_resource_group.rg.name

  sku {
    capacity = 2
    name     = "Standard_D11_v2"
  }
}

resource "azurerm_kusto_database" "database" {
  cluster_name        = azurerm_kusto_cluster.cluster.name
  location            = data.azurerm_resource_group.rg.location
  name                = var.database_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

