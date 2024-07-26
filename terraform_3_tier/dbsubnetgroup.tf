resource "aws_db_subnet_group" "dbsubnetg" {
  name = "dbsubnetg"
  subnet_ids = [aws_subnet.public-1.id, aws_subnet.private-1.id]

  tags = {
    name = "dbsubnetg"
  }
}