provider "azurerm" {
  version = "=2.20.0"
  features {}
}
resource "azurerm_data_factory" "example" {
  name                = var.adf-name
  location            = "Central US"
  resource_group_name = var.resource-group-name
}
