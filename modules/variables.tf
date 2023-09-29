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

variable "bucket_name" {
  description = "The name of the bucket"
  type        = string

  validation {
    condition = (
      length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63 &&
      can(regex("^[a-z0-9][-z0-9-.]*[-z0-9]$", var.bucket_name))
    )
    error_message = "The bucket name must be between 3 and 63 characters"
    
  }
  
}