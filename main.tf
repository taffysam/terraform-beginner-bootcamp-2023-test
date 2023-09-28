
resource "aws_s3_bucket" "example" {
  bucket = "terraform-test-example-bucket"

  tags = {
    Name    = "my-s3-bootcamp-bucket"
    Environment = "Dev"
    UserUuid    = var.user_uuid
  } 
}

variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition     = length(var.user_uuid) == 36
    error_message = "User UUID must be 36 characters long"
  }

  validation {
    condition     = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.user_uuid))
    error_message = "User UUID must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426655440000)"
  }
}

