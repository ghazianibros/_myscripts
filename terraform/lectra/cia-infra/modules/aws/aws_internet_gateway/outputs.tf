output "id" {
  description = "The IDs of the ineternet gateway"
  value       = aws_internet_gateway.ig.id
}
output "arn" {
  description = ""
  value       = aws_internet_gateway.ig.arn
}