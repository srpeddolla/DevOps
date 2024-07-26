resource "aws_lb" "mylb" {
  internal = false
  load_balancer_type = "application"
  subnets = [aws_subnet.public-1.id, aws_subnet.private-1.id]
}

resource "aws_lb_target_group" "mytg" {
  name = "mytg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc1.id
}