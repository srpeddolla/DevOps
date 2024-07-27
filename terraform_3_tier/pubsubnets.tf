resource "aws_subnet" "public-1" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  cidr_block = "10.0.1.0/24"

  tags = {
    "name" = "public-1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  cidr_block = "10.0.2.0/24"

  tags = {
    "name" = "public-2"
  }
}