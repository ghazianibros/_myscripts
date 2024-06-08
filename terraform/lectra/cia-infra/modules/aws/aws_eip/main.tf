
# Elastic-IP (eip)
resource "aws_eip" "eip" {
  domain        = "vpc"
  tags = {
    "Name"        = "${var.vpc_name}-${var.environment}-eip"
  }
}


