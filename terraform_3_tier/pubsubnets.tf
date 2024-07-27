<<<<<<< HEAD
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
=======
resource "aws_subnet" "public-1" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  cidr_block = "10.0.1.0/16"

  tags = {
    "name" = "public-1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  cidr_block = "10.0.2.0/16"

  tags = {
    "name" = "public-2"
>>>>>>> 253c946886f50633ca6dae85941059457d76d2a2
  }
}