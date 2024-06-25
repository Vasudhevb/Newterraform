resource "aws_s3_bucket" "remote" {
    bucket = "lkjhoiuadsfnmvb"
  
}
# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.remote.id
#   acl    = "private"
# }

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.remote.id
  versioning_configuration {
    status = "Enabled"
  }
}