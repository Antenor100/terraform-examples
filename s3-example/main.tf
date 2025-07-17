terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region = var.aws_region
}

resource "aws_s3_bucket" "this" {
  bucket = "apprunner-digiall-site"

  tags = {
    Name        = "terraform"
    Environment = "Dev"
  }
}