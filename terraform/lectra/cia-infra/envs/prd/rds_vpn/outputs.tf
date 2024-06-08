output "env" {
  description   = "The dpeloyed environment"
  value         = var.environment
}
output "aws_account" {
    description = ""
    value = var.aws_profile
}

###
### deployed components
###
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
output "eip_id" {
  description = "The ID of the elastic IP"
  value       = module.vpc.eip_id
}
output "eip_address" {
  description   = "Tbe IP address of the elastic IP"
  value         = module.vpc.eip_address
  
}
output "vpc_name" {
  description   = "Tbe IP address of the elastic IP"
  value         = module.vpc.vpc_name
}
output "vpc_tags" {
  description = "Additional tags for VPC"
  value       = module.vpc.vpc_tags 
  
}

###
### nat gateway
###
output "nat_gateway_id" {
    description = ""
    value = module.vpc.nat_gateway_id
}
###
### internet gateway
###
output "internet_gateway_id" {
  description = ""
  value       = module.vpc.internet_gateway_id
}
output "internet_gateway_arn" {
  description = ""
  value       = module.vpc.internet_gateway_arn
}
###
### subnets
###
output "public_subnet_ids" {
  description = "The IDs of the private subnet"
  value       = module.vpc.public_subnet_ids
}
output "public_subnet_names" {
  description = "The Names of the public subnet"
  value       = module.vpc.public_subnet_names
}
output "private_subnet_ids" {
  description = "The IDs of the private subnet"
  value       = module.vpc.private_subnet_ids
}
output "private_subnet_name" {
  description = "The Names of the private subnet"
  value       = module.vpc.private_subnet_name
}

