
provider "aws" {
  region = var.aws_region
  profile= var.aws_profile

  default_tags {
    tags = {
      Environment = "${var.environment}"
    }
  }
}

module "s3_bucket_with_random_name" {
  source = "../../../modules/lectra/s3_bucket_random"

  string_prefix   = var.string_prefix
  length          = var.random_string_length
}

module "lambda_upload_to_s3" {
  source = "../../../modules/lectra/upload_lambda_s3"

  lambda_archive_type   = var.lambda_archive_type
  lambda_source_dir     = var.lambda_source_dir
  lambda_output_path    = var.lambda_output_path
  lambda_key            = var.lambda_key
  s3_bucket_id          = module.s3_bucket_with_random_name.s3_bucket_id
}

module "lambda_function_s3_function" {
  source = "../../../modules/lectra/lambda_function_s3_bucket"

  function_name                     = var.function_name 
  function_runtime                  = var.function_runtime
  function_handler                  = var.function_handler
  s3_bucket_id                      = module.s3_bucket_with_random_name.s3_bucket_id
  s3_key                            = var.lambda_key
  lambda_source_code_hash           = module.lambda_upload_to_s3.lambda_source_code_hash
  lambda_cloudwatch_retention_days  = var.lambda_cloudwatch_retention_days
}


