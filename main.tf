module "simple" {
  source  = "app.terraform.io/cmporg/simple/azurerm"
  version = "0.0.1"

  prefix = "tfe-test-check"
  region = "WESTUS"
}
