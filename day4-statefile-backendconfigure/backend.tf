terraform {
  backend "s3" {
    bucket = "statefile-confvasuuudeevv"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamolkbbfsf"
    encrypt = true
    
  }
}