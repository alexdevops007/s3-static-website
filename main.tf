module "cloudfront_distribution" {
  source = "./modules/cloudfront-distribution"
  cloudfront_distribution_origin_id = var.origin_id
  cloudfront_distribution_domain_name = ""
}