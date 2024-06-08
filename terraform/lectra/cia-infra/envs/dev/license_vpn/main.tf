
provider "aws" {
  region = var.aws_region
  profile= var.aws_profile

  default_tags {
    tags = {
      environment = "${var.environment}"
      terraform   = "true"
    }
  }
}

module "license_vpc" {
  source = "../../../modules/lectra/vpc"

  aws_region            = var.aws_region
  environment           = var.environment
  vpc_name              = var.vpc_name
  vpc_cidr              = var.vpc_cidr
  public_subnets_cidr   = var.public_subnets_cidr
  private_subnets_cidr  = var.private_subnets_cidr
}



