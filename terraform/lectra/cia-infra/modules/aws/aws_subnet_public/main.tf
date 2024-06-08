
# Public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  count                   = length(var.public_subnets_cidr)
  cidr_block              = element(var.public_subnets_cidr, count.index)
  availability_zone       = element(var.availability_zone, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.vpc_name}-${var.environment}-public-${element(var.availability_zone, count.index)}-subnet"
  }
}
