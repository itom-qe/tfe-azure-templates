module "simple" {
  source  = "app.terraform.io/cpgorg/simple/azurerm"
  version = "0.0.4"

  environment="module-test"
  region = "WESTUS"

}
