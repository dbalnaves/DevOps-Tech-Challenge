output "alb_hostname" {
  value = aws_alb.alb.dns_name
}

output "db_hostname" {
  value = aws_db_instance.rds_db.address
}

output "db_username" {
  value = var.app_name
}

output "db_passwd" {
  value = aws_secretsmanager_secret.db_cred.arn
}

