terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.36.0"
    }
  }

  backend "s3" {
    bucket         = "three-tier-tf-state-bucke"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
