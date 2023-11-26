# Creating S3 bucket 
resource "aws_s3_bucket" "mybucket" {
  bucket = "${var.project}.${var.domain}"
  tags = {
    Name = var.project
  }
}
# Enabling static website
resource "aws_s3_bucket_website_configuration" "site" {
  bucket = aws_s3_bucket.mybucket.bucket
  index_document {
    suffix = "index.html"
  } 
  error_document {
    key = "error.html"
  }
}
# Uploading files to S3
resource "aws_s3_object" "object" {
  for_each = fileset(".\\files\\", "**")
  bucket   = aws_s3_bucket.mybucket.id
  key      = each.value
  source   = ".\\files\\${each.value}"
}
