provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
#module "simple" {
#    prefix		= "testcase1"
#    source              = "github.com/iramathur1991/terraform-azurerm-simple"
#    region              = "westus"
#   
#  }
//--------------------------------------------------------------------
// Variables
variable "demoinfra_clientId" {}
variable "demoinfra_clientSecret" {}
variable "demoinfra_region" {}
variable "demoinfra_subscriptionId" {}
variable "demoinfra_tenantId" {}

//--------------------------------------------------------------------
// Modules
module "demoinfra" {
  source  = "app.terraform.io/cmporg/demoinfra/azure"
  version = "1.0.1"

  clientId = "${var.demoinfra_clientId}"
  clientSecret = "${var.demoinfra_clientSecret}"
  prefix = "qwerty"
  region = "${var.demoinfra_region}"
  subscriptionId = "${var.demoinfra_subscriptionId}"
  tenantId = "${var.demoinfra_tenantId}"
}
