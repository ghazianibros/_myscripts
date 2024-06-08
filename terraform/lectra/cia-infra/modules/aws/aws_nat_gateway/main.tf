
# NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = var.eip_id
  subnet_id     = var.public_subnet_ids
  tags = {
    Name        = "${var.vpc_name}-${var.environment}-nat-gateway"
  }
}


