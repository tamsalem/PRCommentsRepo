resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_commit = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file   = "terraform/aws/s3.tf"
    }, {
    yor_trace = "116ba5c8-7ecd-432b-803c-f761046342d4"
  })
}
