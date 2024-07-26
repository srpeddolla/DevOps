resource "aws_lb_listener" "mylistener" {
  load_balancer_arn = aws_lb.mylb.arn
  port = "80"
  protocol = "HTTP"
  default_action {
    target_group_arn = "${aws_lb_target_group.mytg.id}"
    type = "forward"
  }
}