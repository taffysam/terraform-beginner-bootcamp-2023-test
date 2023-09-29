
#resource "aws_s3_bucket" "example" {
#  bucket = "terraform-test-example-bucket"
#
#  tags = {
#    Name    = "my-s3-bootcamp-bucket"
#    Environment = "Dev"
#    UserUuid    = var.user_uuid
#  } 
#}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}