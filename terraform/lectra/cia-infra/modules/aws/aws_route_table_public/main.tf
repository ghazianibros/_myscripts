
# Routing tables to route traffic for Public Subnet
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "${var.vpc_name}-${var.environment}-public-route-table"
  }
}

