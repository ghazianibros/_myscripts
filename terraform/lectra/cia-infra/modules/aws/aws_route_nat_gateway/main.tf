
# Route for Internet Gateway
resource "aws_route" "private_nat_gateway" {
  route_table_id         = var.route_table_id_private
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.nat_gateway_id

}

