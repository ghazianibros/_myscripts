variable "aws_region" {
  default = null
}

variable "aws_profile" {
  default = null
}

variable "environment" {
  default = "dev"
}


##
## license_vpc
##
variable "vpc_name" {
  default = null
}

variable "vpc_cidr" {
  default     = null
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default     = null
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = null
  description = "CIDR block for Private Subnet"
}
variable "vpc_tags" {
  description = "Additional tags for VPC"
  type        = map(string)
  default     = {}
}

