resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}


module "virtual_network" {
    source              = "https://github.com/luis-0419/az-terraform-modules/blob/master/virtual_network/main.tf"
    
    name                = var.virtual_network_name
    resource_group_name = var.resource_group_name
    address_space       = var.virtual_network_address_space
}


module "virtual_network_peering" {
    source              = "https://github.com/luis-0419/az-terraform-modules/blob/master/virtual_network_peering/main.tf"

    name                = var.virtual_network_peering_name
    resource_group_name = var.resource_group_name
    virtual_network_name = var.virtual_network_name
}


module "data_factory" {
    source              = "https://github.com/luis-0419/az-terraform-modules/blob/master/data_factory/main.tf"

    name                = var.data_factory_name
    resource_group_name = var.resource_group_name
}