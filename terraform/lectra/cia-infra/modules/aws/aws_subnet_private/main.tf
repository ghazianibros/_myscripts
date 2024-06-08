
# Private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id                  = var.vpc_id
  count                   = length(var.private_subnets_cidr)
  cidr_block              = element(var.private_subnets_cidr, count.index)
  availability_zone       = element(var.availability_zone, count.index)
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.vpc_name}-${var.environment}-private-${element(var.availability_zone, count.index)}-subnet"
  }
}