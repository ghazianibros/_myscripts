variable "aws_region" {
  description = ""
  type        = string
}

variable "environment" {
  description = ""
  type        = string
}

variable "vpc_name" {
  description = ""
  type        = string
}

variable "vpc_cidr" {
  description = ""
  type        = string
}

variable "public_subnets_cidr" {
  description = ""
  type        = list(any)
}

variable "private_subnets_cidr" {
  description = ""
  type        = list(any)
}
variable "tags" {
  description = "Additional tags for VPC"
  type        = map(string)
  default     = {}
}