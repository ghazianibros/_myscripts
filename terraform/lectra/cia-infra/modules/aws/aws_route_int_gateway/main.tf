
# Route for Internet Gateway
resource "aws_route" "public_internet_gateway" {
  route_table_id         = var.route_table_id_public
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id

}

