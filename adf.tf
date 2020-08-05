provider "azurerm" {
  version = "=2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource-group-name
  location = "northeurope"
}

resource "azurerm_data_factory" "example" {
  name                = var.adf-name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

