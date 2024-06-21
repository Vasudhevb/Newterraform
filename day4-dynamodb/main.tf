provider "aws" {
  
}
resource "aws_s3_bucket" "remote" {
    bucket = "vasudhevvvvvvvvvvvvvvvvanurajjjjjjjjjjjj"
  
}
resource "aws_dynamodb_table" "name" {
    name ="arrjunpalwaynason"
    hash_key = "LOCK.ID"
    read_capacity = 20
    write_capacity = 20
    attribute {
      name = "LOCK.ID"
      type = "S"
    }
    depends_on = [aws_s3_bucket.remote]
}    

