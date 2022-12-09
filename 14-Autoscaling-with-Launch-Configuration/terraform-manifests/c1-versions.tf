# Terraform Block
terraform {
  required_version = "~> 1.0" # which means any version equal & above 1.0 like 1.0, 1.2 and 1.xx etc
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0.0"
    }        
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }       
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

# Create Random Pet Resource
resource "random_pet" "this" {
  length = 2
}
