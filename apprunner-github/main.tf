# Connection, apptunner to github
resource "aws_apprunner_connection" "github" {
  connection_name = var.connection_name
  provider_type   = "GITHUB"
}

# Exemplo de variável local
# locals {
#   repo_url = var.repository_url
# }

resource "aws_apprunner_service" "site" {
  service_name = var.service_name

  source_configuration {
    authentication_configuration {
      connection_arn = aws_apprunner_connection.github.arn
    }

    auto_deployments_enabled = true

    code_repository {
      repository_url = var.repository_url

      source_code_version {
        type  = "BRANCH"
        value = var.branch
      }

      code_configuration {
        configuration_source = "API"
        code_configuration_values {
          runtime       = "NODEJS_18"
          build_command = var.build_command
          start_command = var.start_command
          port          = var.port
          runtime_environment_variables = {
            NEXT_PUBLIC_API_URL= var.webhook_ai_agent
          }
        }
      }
    }
  }

  network_configuration {
    egress_configuration {
      egress_type = "DEFAULT"
    }
  }

  instance_configuration {
    cpu    = "1 vCPU"
    memory = "2 GB"
  }

  observability_configuration {
    observability_enabled = true
    observability_configuration_arn = aws_apprunner_observability_configuration.main.arn
  }

  tags = { Project = "Site" }
}

resource "aws_apprunner_observability_configuration" "main" {
  observability_configuration_name = "${var.service_name}-obs"
  trace_configuration {
    vendor = "AWSXRAY"
  }
}