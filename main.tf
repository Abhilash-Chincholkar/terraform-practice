terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.8.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "test-rg"
  location = "West Europe"
}

resource "azurerm_resource_group" "abhilash-block" {
  name     = "abhilash-rg"
    location = "West Europe"
}

resource "azurerm_resource_group" "demo-rg" {
  name     = "demo-rg"
  location = "West Europe"
}