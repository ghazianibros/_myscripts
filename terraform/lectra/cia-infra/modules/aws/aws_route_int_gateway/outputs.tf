output "route_table_private_id" {
  description = "The IDs of the private route table"
  value       = aws_route.public_internet_gateway.id
}