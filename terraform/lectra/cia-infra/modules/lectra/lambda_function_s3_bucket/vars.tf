variable "function_name" {
  type        = string
  default     = ""
  description = ""
}

variable "function_runtime" {
  type        = string
  default     = ""
  description = ""
}

variable "function_handler" {
  type        = string
  default     = ""
  description = ""
}

variable "s3_bucket_id" {
  type        = string
  default     = ""
  description = ""
}

variable "s3_key" {
  type        = string
  default     = ""
  description = ""
}

variable "lambda_source_code_hash" {
  type        = string
  default     = ""
  description = ""
}

variable "lambda_cloudwatch_retention_days" {
  type        = number
  default     = 30
  description = ""
}



