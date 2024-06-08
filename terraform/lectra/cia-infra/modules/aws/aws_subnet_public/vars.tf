variable "vpc_id" {
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

variable "availability_zone" {
  description = ""
  type        = list(string)
}