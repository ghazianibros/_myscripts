
#Internet gateway
resource "aws_internet_gateway" "ig" {
  vpc_id = var.vpc_id
  tags = {
    "Name"        = "${var.vpc_name}-${var.environment}-igw"
  }
}


