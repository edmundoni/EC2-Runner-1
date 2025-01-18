terraform {
    required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "falcondevsecops01"
    region         = "eu-west-2"
    key            = "Github-Runner-TF/terraform.tfstate"
    encrypt        = true
  }
  
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}