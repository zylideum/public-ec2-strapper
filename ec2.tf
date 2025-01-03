resource "aws_instance" "main_ec2" {
  ami                    = var.ec2_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.main_sg_allow.id]
  key_name               = var.key_pair

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from TF :)</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Project = "EC2Server"
  }
}

resource "aws_eip" "main_eip" {
  instance = aws_instance.main_ec2.id
  domain   = "vpc"

  depends_on = [
    aws_internet_gateway.main_igw
  ]

  tags = {
    Project = "EC2Server"
  }
}
