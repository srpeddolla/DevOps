resource "aws_instance" "terraform-1" {
  ami = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  key_name = "ec2-key"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  subnet_id = aws_subnet.public-1.id
  associate_public_ip_address = true
  user_data = "${file("userdata.sh")}"

  tags = {
    Name = "terraform-1"
  }
}

resource "aws_instance" "terraform-2" {
  ami = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  key_name = "ec2-key"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  subnet_id = aws_subnet.public-1.id
  associate_public_ip_address = true
  user_data = "${file("userdata.sh")}"

  tags = {
    Name = "terraform-2"
  }
}