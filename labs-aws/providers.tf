terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "s3-teams1-livecampus-eu-west-3"
    key    = "lb/state/terrafomr.tfstate"
    region = "eu-west-3"
    encrypt = true
    dynamodb_table = "dynamo-teams1-labs-livecampus-eu-west-3"
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
}

