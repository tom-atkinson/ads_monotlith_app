terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
  subscription_id = "b40b301b-a50a-41d7-be9b-024a3e2ba19d"
}

data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}
