resource "aws_subnet" "private-1" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
  cidr_block = "10.0.3.0/24"
  tags = {
    "name" = "private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
  cidr_block = "10.0.4.0/24"

  tags = {
    "name" = "private-2"
  }
}