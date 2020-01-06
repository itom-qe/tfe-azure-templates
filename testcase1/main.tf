provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "simple" {
    source              = ""
    location            = "westus"
    resource_group_name = "${var.resource_group_name}"
  }
