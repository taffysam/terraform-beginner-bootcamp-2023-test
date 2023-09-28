

resource "aws_s3_bucket" "example" {
  bucket = "terraform-test-example-bucket"

  tags = {
    Name        = "my-s3-bootcamp-bucket"
    Environment = "Dev"
  } 
}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}
