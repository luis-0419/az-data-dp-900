variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string  
  
}

variable "location" {
  description = "The location where the resource group will be created."
  type        = string 
  
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}