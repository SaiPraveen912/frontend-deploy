terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket         = "daws-78s-cloud-remote-state" # bucket name from AWS
    key            = "expense-dev-frontend"             # key name we can give should be different for different projects
    region         = "us-east-1"                   # region where bucket is created
    dynamodb_table = "daws78s-locking"
  }
}

# provide authentication here
provider "aws" {
  # Configuration options should be here but github is not safe option
  # So we used aws configure in our local laptop
  region = "us-east-1"
}
