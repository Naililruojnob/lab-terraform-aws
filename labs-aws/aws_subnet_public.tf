resource "aws_subnet" "lb-public-subnet" {
  count = length(var.public_frontend_subnets_cidr)

  vpc_id            = aws_vpc.lb-vpc.id
  cidr_block        = values(var.public_frontend_subnets_cidr)[count.index]
  availability_zone = keys(var.public_frontend_subnets_cidr)[count.index]
  tags = {
    Name = "LB-public-subnet-${count.index}-${keys(var.public_frontend_subnets_cidr)[count.index]}"
  }
}