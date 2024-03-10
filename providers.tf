terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.9.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "madan-RG"
    storage_account_name = "javaterraformcicd"
    container_name       = "javaterraformremote"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}

}