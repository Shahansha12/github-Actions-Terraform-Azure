terraform {
  backend "azurerm" {
    resource_group_name  = "terrashan"
    storage_account_name = "terrashanacc"
    container_name       = "tshanfile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
