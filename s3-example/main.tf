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
  bucket = "my-tf-example-bucket-${random_id.this.hex}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "random_id" "this" {
  byte_length = 8
}