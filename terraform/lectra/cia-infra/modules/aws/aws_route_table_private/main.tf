
# Routing tables to route traffic for Private Subnet
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "${var.vpc_name}-${var.environment}-private-route-table"
  }
}

