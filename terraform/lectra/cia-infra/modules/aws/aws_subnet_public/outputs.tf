output "ids" {
  description = "The IDs of the public subnet"
  value       = aws_subnet.public_subnet.*.id
}
output "names" {
  description = "The Names of the public subnet"
  value       = aws_subnet.public_subnet.*.tags[*]
}
