resource "aws_security_group" "test-terraform-sg" {
  name        = "terraform-sg"
  description = "Allow SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "permite ssh"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = var.ingress_ip_ssh_sg
  }
  tags = {
    Name = "allow-ssh"
  }

  egress {
    description = "permite ssh"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = var.egress_ip_ssh_sg
  }
}

