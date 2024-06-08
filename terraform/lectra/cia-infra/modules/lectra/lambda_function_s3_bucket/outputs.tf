
output "lambda_arn" {
  description = ""

  value = aws_lambda_function.lambda_function.arn
}

output "function_name" {
  description = "Name of the Lambda function."

  value = aws_lambda_function.lambda_function.function_name
}