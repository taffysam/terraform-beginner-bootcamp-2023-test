
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  
  }
  }


provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length  = 16
  special = false
}

resource "aws_s3_bucket" "example"{
  bucket = "terraform-test-example-bucket"

  tags = {
    Name = "my-s3-bootcamp-bucket"
    Environment = "Dev"
  } 
  }

output "random_bucket_name"{
value = random_string.bucket_name.result
}

