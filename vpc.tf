resource "aws_vpc" "main" {
  cidr_block = var.vpc_ip
  tags = {
    Name = "test-terraform-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_ip
  availability_zone = var.zona

  tags = {
    Name = "test-terraform-subnet"
  }
}

resource "aws_internet_gateway" "terraform-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "test-terraform-gateway"
  }
}

resource "aws_route_table" "terraform-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.route_table_ip
    gateway_id = aws_internet_gateway.terraform-gw.id
  }


  tags = {
    Name = "test-terraform-rt"
  }
}

