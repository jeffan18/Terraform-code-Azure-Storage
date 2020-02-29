/* azure Credentials for Terraform */
variable "subscription_id" { type = string }
variable "tenant_id" { type = string }
variable "client_secret" { type = string }
variable "client_id" { type = string }

/* Project, environment, location */
locals {
  storage_account_name = "${var.dns_prefix}${var.project}${substr(var.environment, 0, 3)}"
}

variable "environment" {
  default = "dev"
}

variable "dns_prefix" {
  default = "fan"
}

variable "project" {
  default = "staticwebsite"
}

variable "location" {
  default = "East US"
}

/* Resources */

variable "resource_group_name" {
  description = "resource group of the resources."
  default = "RG-Fan-eastus-2020"
}


