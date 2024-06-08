data "archive_file" "lambda_archive_file" {
  type = var.lambda_archive_type

  source_dir  = var.lambda_source_dir
  output_path = "${path.module}/${var.lambda_key}"
}

resource "aws_s3_object" "lambda_s3_object" {
  bucket = var.s3_bucket_id

  key    = var.lambda_key
  source = data.archive_file.lambda_archive_file.output_path

  etag = filemd5(data.archive_file.lambda_archive_file.output_path)
}