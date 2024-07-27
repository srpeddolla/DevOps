resource "aws_subnet" "private-1" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
<<<<<<< HEAD
  cidr_block = "10.0.3.0/24"
=======
  cidr_block = "10.0.3.0/16"

>>>>>>> 253c946886f50633ca6dae85941059457d76d2a2
  tags = {
    "name" = "private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
<<<<<<< HEAD
  cidr_block = "10.0.4.0/24"
=======
  cidr_block = "10.0.4.0/16"
>>>>>>> 253c946886f50633ca6dae85941059457d76d2a2

  tags = {
    "name" = "private-2"
  }
}