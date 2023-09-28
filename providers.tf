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

   cloud {
    organization="Tafadzwa"

    workspaces {
      name = "terra-house-1"
    }
  }
 
}

provider "random" {
  # Configuration options for the random provider, if needed.
}

resource "random_string" "bucket_name" {
  length  = 16
  special = false
}
