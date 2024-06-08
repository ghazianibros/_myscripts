variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "gt-swdev"
}

variable "environment" {
  default = "dev"
}

variable "vpc_name" {
  default = "license"
}

##
## license_vpc
##
variable "vpc_cidr" {
  default     = "192.16.0.0/16"
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["192.16.0.0/20", "192.16.16.0/20"]
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["192.16.32.0/20", "192.16.48.0/20"]
  description = "CIDR block for Private Subnet"
}

##
## s3_bucket_with_random_name
##
variable "string_prefix" {
  type        = string
  default     = null
  description = ""
}

variable "random_string_length" {
  type        = number
  default     = null
  description = ""
}

##
## lambda_upload_to_s3
##
variable "lambda_archive_type" {
  type        = string
  default     = null
  description = ""
}

variable "lambda_source_dir" {
  type        = string
  default     = null
  description = ""
}

variable "lambda_output_path" {
  type        = string
  default     = null
  description = ""
}

variable "lambda_key" {
  type        = string
  default     = null
  description = ""
}

##
## lambda_function_s3_bucket
##
variable "function_name" {
  type        = string
  default     = null
  description = ""
}

variable "function_runtime" {
  type        = string
  default     = null
  description = ""
}

variable "function_handler" {
  type        = string
  default     = null
  description = ""
}
variable "lambda_cloudwatch_retention_days" {
  type        = number
  default     = null
  description = ""
}


