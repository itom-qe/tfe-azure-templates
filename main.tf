module "simple" {
  source  = "app.terraform.io/cmporg/simple/azurerm"
  version = "0.0.3"

  environment="module-test"
  region = "WESTUS"

}
