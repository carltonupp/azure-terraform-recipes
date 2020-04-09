terraform {
  required_providers {
    azurerm = "~> 2.5.0"
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

resource "azurerm_resource_group" "app" {
  name     = "rg-${var.app_name}-${var.env}"
  location = var.location

  tags = {
    environment = var.full_env_name[var.env]
  }
}