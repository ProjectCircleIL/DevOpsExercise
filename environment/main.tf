module "cool-env" {
  source   = "../modules/cool-environment/"
  vpc_cidr = "10.10.0.0/16"
}

