terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.21.1"
    }
  }
}

# Provider-1 for EastUS (Default Provider)
provider "azurerm" {
  features {}
}

# Provider-2 for WestUS
provider "azurerm" {
  features {
    virtual_machine {
    }
  }
  alias = "provider2-westus"
  #client_id = 
  #client_secret = 
  #environment = 
  #subscription_id =
}