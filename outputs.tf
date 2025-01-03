output "ec2_public_ip" {
  value       = aws_eip.main_eip.public_ip
  description = "Public IP of the instance."
}

output "aws_region" {
  value       = var.aws_region
  description = "AWS region in which resources are deployed."
}
