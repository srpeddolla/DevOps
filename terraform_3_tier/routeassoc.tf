resource "aws_route_table_association" "route-a" {
  subnet_id = aws_subnet.public-1.id
  route_table_id = aws_route_table.myroute.id
}

resource "aws_route_table_association" "route-b" {
  subnet_id = aws_subnet.private-1.id
  route_table_id = aws_route_table.myroute.id
}