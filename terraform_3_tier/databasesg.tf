resource "aws_security_group" "dbsg" {
  name = "dbsg"
  description = "Allow inbound traffic from application layer"
  vpc_id = aws_vpc.vpc1.id

    ingress {
        description = "Allow inbound traffic from application layer"
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 32768
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        name = "dbsg"
    }
<<<<<<< HEAD
=======

>>>>>>> 253c946886f50633ca6dae85941059457d76d2a2
}