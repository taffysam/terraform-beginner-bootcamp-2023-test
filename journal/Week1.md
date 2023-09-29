# Terraform Beginner Bootcamp 2023 - Week 1

## Root Module Structure

Our root module structure is as follows:
```
- PROJECT_ROOT
  - varaibles.tf     : stores the structure os variables
  - main.tf          : everything else
  - providers.tf     : stores required providers and their configurations
  - outputs.tf       : stores outputs
  - terraform.tfvars : stores data os variables we need to load 
  - README.md        : required for root modules
```

[Root Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)


## Passing input Variables



## Module Sources

Can be from 3 main sources:
- GitHub
- Local
- Terraform Registry
  
```terraform
module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
 ``` 
 [Module Sources](https://developer.hashicorp.com/terraform/language/modules/sources) 
