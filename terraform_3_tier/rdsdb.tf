resource "aws_db_instance" "rdsdb" {
  db_subnet_group_name = aws_db_subnet_group.dbsubnetg.id
  engine = "mysql"
  db_name = "rdsdb"
  allocated_storage = 8
  engine_version = "5.7.44" # or another valid version
  instance_class = "db.t3.micro"
  multi_az = true
  username = "srpeddollas"
  password = "srpeddollas123"
  #parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = [aws_security_group.mysg.id]
}