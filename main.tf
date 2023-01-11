module "s3-bucket" {
  source = "./modules/s3-bucket"
  s3_bucket-bucket = var.domain_name
}

module "cloudfront_distribution" {
  source = "./modules/cloudfront-distribution"
  cloudfront_distribution_origin_id = var.origin_id
  cloudfront_distribution_domain_name = module.s3-bucket.s3_bucket_website_endpoint
}