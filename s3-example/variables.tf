variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "Perfil do ~/.aws/credentials"
  type        = string
  default     = "default"
}