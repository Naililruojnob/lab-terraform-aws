resource "aws_internet_gateway" "lb-gw" {
  vpc_id = aws_vpc.lb-vpc.id

  tags = {
    Name = "LB-gateway"
  }
}