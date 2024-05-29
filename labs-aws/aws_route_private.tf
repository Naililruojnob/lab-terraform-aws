resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.lb-vpc.id
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lb-gw.id
  }
  tags = {
    Name = "LB-route_table_public-eu-west-3b"
  }
}
resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.lb-vpc.id
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lb-gw.id
  }
  tags = {
    Name = "LB-route_table_private-eu-west-3b"
  }
}
resource "aws_route_table_association" "association_subnet_public" {
  count = length(var.public_frontend_subnets_cidr)

  subnet_id      = aws_subnet.lb-public-subnet[count.index].id
  route_table_id = aws_route_table.route_table_public.id
}
resource "aws_route_table_association" "association_subnet_private" {
  count = length(var.private_frontend_subnets_cidr)

  subnet_id      = aws_subnet.lb-private-subnet[count.index].id
  route_table_id = aws_route_table.route_table_private.id
}

