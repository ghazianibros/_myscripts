
output "aws_account" {
    description = ""
    value = var.aws_profile
}

###
### deployed components
###
output "s3_bucket_name" {
  description = ""

  value = module.s3_bucket_with_random_name.s3_bucket_id
}
output "lambda_arn" {
  description = ""

  value = module.lambda_function_s3_function.lambda_arn
}
output "function_name" {
  description = ""

  value = module.lambda_function_s3_function.function_name
}