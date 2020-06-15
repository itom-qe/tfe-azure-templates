provider "azurerm" {
  client_id       = var.clientId
  client_secret   = var.clientSecret
  tenant_id       = var.tenantId
  #version         = "=2.0.0"
  #features {}
}
