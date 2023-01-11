resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket
  acl    = "public-read"
  policy = <<POLICY
    {
        "Version":"2023-01-11",
        "Statement": [
            {
                "Sid":"AddPerm",
                "Effect":"Allow",
                "Principal":"*",
                "Action":["s3:GetObject"],
                "Resource":["arn:aws:s3:::${var.s3_bucket}/*"]
            }
        ]
    }
  POLICY

  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}