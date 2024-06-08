variable "aws_region" {
  default = null
}

variable "aws_profile" {
  default = null
}

variable "environment" {
  default = null
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


