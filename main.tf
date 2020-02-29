provider "azurerm" {
  version         = "1.44.0"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

terraform {
  backend "azurerm" {
    resource_group_name   = "RG-Common-Resources" 
    storage_account_name  = "forterraformbackend"
    container_name        = "tfstate"
    access_key = "qXRMCmbVZuqd5OJm6Wk39MuYvlhnHdmgDABoQXppavuAzp2nzbvEc9I0dbrsQ2xiZH/njX/rjv30jrA7jCvgJQ=="
    key = "project.static.website.action.test.txt"
  }
}
