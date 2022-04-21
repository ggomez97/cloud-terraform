resource "aws_instance" "instance" {
  ami             = var.ami
  instance_type   = var.type
  
  subnet_id       = aws_subnet.my_subnet.id #La instancia sabe que VPC usar porque la subnet esta conectada a esa VPC.
  vpc_security_group_ids = [aws_security_group.test-terraform-sg.id]  

  tags = {
    Name  = "Name"
    Value = "terraform"
  }
}

