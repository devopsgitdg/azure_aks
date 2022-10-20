# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.19.0" 
    }
  
     
  }
}


 
# Provider Block
provider "azurerm" {
 features {}   
  skip_provider_registration = true       
}


