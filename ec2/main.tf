resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc

  tags = {
    Name = commontags.name
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet
  availability_zone = var.az

  tags = {
    Name = ""
  }
}



