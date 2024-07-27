resource "aws_lb_target_group_attachment" "lbtg1" {
  target_group_arn = aws_lb_target_group.mytg.arn
  target_id = aws_instance.terraform-1.id
  port = 80
  depends_on = [aws_instance.terraform-1]
}

resource "aws_lb_target_group_attachment" "lbtg2" {
  target_group_arn = aws_lb_target_group.mytg.arn
  target_id = aws_instance.terraform-2.id
  port = 80
  depends_on = [aws_instance.terraform-2]
}