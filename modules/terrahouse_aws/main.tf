
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

#resource "aws_s3_bucket" "my_website_bucket"{
#  bucket = var.bucket-name
# 
#  tags = {
#    UserUuid = var.user_uuid
#  }
#}

#}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"

  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "bootcamp_2023" {
  bucket = aws_s3_bucket.bootcamp_2023.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }


}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"

  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "bootcamp_2023" {
  bucket = aws_s3_bucket.bootcamp_2023.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }


  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }

}


}

}
