module "simple" {
  source  = "app.terraform.io/cmporg/simple/azurerm"
  version = "0.0.2"

  prefix = "tfe-check"
  region = "WESTUS"
  resource_group ="moduleTest"
}
