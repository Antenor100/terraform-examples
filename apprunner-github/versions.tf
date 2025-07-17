terraform {
  required_version = ">= 1.8.0"

  required_providers {
    aws    = { source = "hashicorp/aws", version = "~> 6.0" }
    github = { source = "integrations/github", version = "~> 6.1" }
  }

  backend "s3" {}
}