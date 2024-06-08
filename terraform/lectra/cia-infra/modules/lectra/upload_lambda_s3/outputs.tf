output "lambda_source_code_hash" {
  description = ""

  value = data.archive_file.lambda_archive_file.output_base64sha256
}