locals {
  bucket_name ="vasudhevvvvvvlkjh"
}
resource "aws_s3_bucket" "name" {
    bucket = local.bucket_name
    tags = {
      Name =local.bucket_name
      Environment =var.env
    }
  
}