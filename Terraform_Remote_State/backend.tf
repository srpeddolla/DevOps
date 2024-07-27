# backend.tf
terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "path/to/your/terraform.tfstate"
    region         = "your-region"
    dynamodb_table = "terraform-lock-table"  # Optional, for state locking
    encrypt        = true
  }
}

# main.tf
provider "aws" {
  region = "your-region"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
  acl    = "private"
}