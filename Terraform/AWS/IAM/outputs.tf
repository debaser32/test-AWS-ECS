output "user_arn" {
  value = aws_iam_user.iam_user.arn
}

output "secret" {
  value     = aws_iam_access_key.credentials.secret
  sensitive = true
}

output "access_key" {
  value = aws_iam_access_key.credentials.id
}