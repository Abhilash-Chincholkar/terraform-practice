terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name              = "resource_group"
    storage_account_name             = "cofsils"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name                   = "cofsils"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                              = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
features {}
subscription_id = "c64cf66f-900c-4cad-b6cd-ee68a9839e8a"
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
