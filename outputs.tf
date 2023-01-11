output "s3_bucket_arn" {
  value = module.s3-bucket.s3-bucket-arn
}

output "s3_bucket_website_endpoint" {
  value = module.s3-bucket.s3_bucket_website_endpoint
}