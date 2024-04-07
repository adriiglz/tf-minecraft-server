terraform {
  required_providers { // El provedor de Azure usado es 'azurerm'
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.98.0"
    }
  }
}

provider "azurerm" {
  features {}
}