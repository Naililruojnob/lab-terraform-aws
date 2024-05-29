resource "aws_subnet" "lb-private-subnet" {
  count = length(var.private_frontend_subnets_cidr)

  vpc_id            = aws_vpc.lb-vpc.id
  cidr_block        = values(var.private_frontend_subnets_cidr)[count.index]
  availability_zone = keys(var.private_frontend_subnets_cidr)[count.index]
  tags = {
    Name = "LB-private-subnet-${count.index}-${keys(var.private_frontend_subnets_cidr)[count.index]}"
  }
}