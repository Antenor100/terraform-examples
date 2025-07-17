# AWS
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type = string
  default = "default"
}

# GitHub
variable "repository_url" { 
  type = string
}

variable "branch" {
  type    = string
  default = "main"
}

variable "github_owner" { 
  type = string
}

variable "github_token" { 
  type = string
  sensitive = true
}

variable "webhook_ai_agent" { 
  type = string
}

# App Runner
variable "connection_name" { 
  type = string
  default = "github-digiall-site-connection"
}

variable "service_name" { 
  type = string
  default = "digiall-site-apprunner"
}

variable "build_command" { 
  type = string
  default = "rm -rf node_modules package-lock.json && npm cache clean --force && npm install && npm run build"
}

variable "start_command" { 
  type = string
  default = "npm start"
}

variable "port"{ 
  type = string
  default = "3000"
}