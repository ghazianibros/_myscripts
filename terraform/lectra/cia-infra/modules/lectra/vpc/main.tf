locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}

module "vpc" {
  source = "../../aws/aws_vpc"

  aws_region            = var.aws_region
  environment           = var.environment
  vpc_name              = var.vpc_name
  vpc_cidr              = var.vpc_cidr
  public_subnets_cidr   = var.public_subnets_cidr
  private_subnets_cidr  = var.private_subnets_cidr
  tags                  = var.vpc_tags 
}

module "public_subnet" {
  source = "../../aws/aws_subnet_public"

  vpc_id                = module.vpc.id
  environment           = var.environment
  vpc_name              = var.vpc_name
  vpc_cidr              = var.vpc_cidr
  public_subnets_cidr   = var.public_subnets_cidr
  availability_zone     = local.availability_zones
}

module "private_subnet" {
  source = "../../aws/aws_subnet_private"

  vpc_id                = module.vpc.id
  environment           = var.environment
  vpc_name              = var.vpc_name
  vpc_cidr              = var.vpc_cidr
  private_subnets_cidr  = var.private_subnets_cidr
  availability_zone     = local.availability_zones
}

module "internet_gateway" {
  source = "../../aws/aws_internet_gateway"

  vpc_id                = module.vpc.id
  environment           = var.environment
  vpc_name              = var.vpc_name
}

module "eip" {
  source = "../../aws/aws_eip"

  environment           = var.environment
  vpc_name              = var.vpc_name
  depends_on            = [ module.internet_gateway ]
}

module "nat_gateway" {
  source = "../../aws/aws_nat_gateway"

  environment           = var.environment
  vpc_name              = var.vpc_name
  eip_id                = module.eip.eip_id
  public_subnet_ids     = element(module.public_subnet.ids, 0)

}

module "route_table_public" {
  source = "../../aws/aws_route_table_public"

  vpc_id                = module.vpc.id
  environment           = var.environment
  vpc_name              = var.vpc_name
}

module "route_table_private" {
  source = "../../aws/aws_route_table_private"

  vpc_id                = module.vpc.id
  environment           = var.environment
  vpc_name              = var.vpc_name
}

module "route_internet_gateway" {
  source = "../../aws/aws_route_int_gateway"

  route_table_id_public = module.route_table_public.id
  internet_gateway_id   = module.internet_gateway.id
  
}

module "route_nat_gateway" {
  source = "../../aws/aws_route_nat_gateway"

  route_table_id_private  =  module.route_table_private.id
  nat_gateway_id          = module.internet_gateway.id
  
}

# Route table associations for both Public & Private Subnets
resource "aws_route_table_association" "public" {
  count          = length(var.public_subnets_cidr)
  subnet_id      = element(module.public_subnet.ids, count.index)
  route_table_id = module.route_table_public.id
}

resource "aws_route_table_association" "private" {
  count          = length(var.private_subnets_cidr)
  subnet_id      = element(module.private_subnet.ids, count.index)
  route_table_id = module.route_table_private.id
}
  
