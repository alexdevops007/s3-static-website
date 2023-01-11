output "s3-bucket-arn" {
  value = aws_s3_bucket.my_s3_bucket.arn
}

output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket_website_configuration.my_s3_bucket.website_endpoint
}