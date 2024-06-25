provider "aws" {
    region = "ap-south-1"
  
}
provider "aws" {
    region = "us-east-1"
    alias = "america"
  
}

resource "aws_s3_bucket" "name" {
    bucket = "lkjjbbbndfsafsa"
  
}
resource "aws_s3_bucket" "dev" {
    bucket = "lkjhertynmbvc"
    provider = aws.america #provider.value of alias
  
}