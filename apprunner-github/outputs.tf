output "service_url" {
  description = "URL pública do App Runner"
  value       = aws_apprunner_service.site.service_url
}
