output "eip_id" {
  description = "The ID of the elastic IP"
  value       = aws_eip.eip.id
}

output "eip_address" {
  description = "The IP address of the elastic IP"
  value       = aws_eip.eip.address
}