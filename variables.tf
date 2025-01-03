# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# EC2 AMI
variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0d16a00c70ee279b8"
}

# EC2 Instance Type
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

# SSH Key Pair
variable "key_pair" {
  description = "SSH key pair for EC2 instance"
  type        = string
  default     = "terraform-ec2server"
}

# VPC CIDR Block
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.127.0.0/24"
}

# Subnet CIDR Block
variable "subnet_cidr" {
  description = "CIDR block for Subnet"
  type        = string
  default     = "10.127.0.0/25"
}

# Availability Zone
variable "availability_zone" {
  description = "AWS Availability Zone"
  type        = string
  default     = "us-west-2a"
}
