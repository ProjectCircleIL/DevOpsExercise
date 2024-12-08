locals {
  cidrsubnet      = var.vpc_cidr
  private_subnets = [cidrsubnet(local.cidrsubnet, 4, 1)]
  public_subnets  = [cidrsubnet(local.cidrsubnet, 4, 6)]
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.5"

  name = "cool-vpc"
  cidr = local.cidrsubnet

  azs             = data.aws_availability_zones.available.names
  private_subnets = local.private_subnets
  public_subnets  = local.public_subnets

  enable_nat_gateway = true

}

