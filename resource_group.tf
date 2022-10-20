 # Create a resource group
 resource "azurerm_resource_group" "dg_rgp" {
  name     = "kubernetes-dg"
  location = var.location
} 
 

/* 
data "azurerm_resource_group" "dg_rgp" {
  name  = "rg-entprod-compos-poc"
   
} 


data "azurerm_resource_group" "dg_rg2" {
   name = "rg-entprod-ne-core-prod"
  
} */