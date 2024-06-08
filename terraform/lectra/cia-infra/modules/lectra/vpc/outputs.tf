output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.id
}
output "eip_id" {
  description = "The ID of the elastic IP"
  value       = module.eip.eip_id
}
output "eip_address" {
  description = "Tbe IP address of the elastic IP"
  value = module.eip.eip_address
}
output "vpc_name" {
  description = ""
  value = var.vpc_name 
}
output "vpc_tags" {
  description = "Additional tags for VPC"
  value       = module.vpc.tags
}
###
### nat gateway
###
output "nat_gateway_id" {
    description = ""
    value = module.nat_gateway.id
}

###
### internet gateway
###
output "internet_gateway_id" {
  description = ""
  value       = module.internet_gateway.id
}
output "internet_gateway_arn" {
  description = ""
  value       = module.internet_gateway.arn
}

###
### subnets
###
output "public_subnet_ids" {
  description = "The IDs of the private subnet"
  value       = module.public_subnet.ids
}
output "public_subnet_names" {
  description = "The Names of the public subnet"
  value       = module.public_subnet.names
}
output "private_subnet_ids" {
  description = "The IDs of the private subnet"
  value       = module.private_subnet.ids
}
output "private_subnet_name" {
  description = "The Names of the private subnet"
  value       = module.public_subnet.names
}