resource "aws_vpc" "lb-vpc" {
  cidr_block       = "172.0.0.0/16"
  tags = {
    Name = "LB-vpc-s3-teams1-labs-livecampus"
  }
}