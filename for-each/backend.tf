terraform {
  backend "s3" {
    bucket = "chandu-reddy-s3-buckets"
    key = "terraform-for-each"
    region = "us-east-1"
    dynamodb_table = "chandu-lock"
  }
}