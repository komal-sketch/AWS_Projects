
# Internet Gateway for VPC A
resource "aws_internet_gateway" "gw_a" {
  vpc_id = aws_vpc.vpc_a.id
  tags = {
    Name = "VPC-A IGW"
  }
}

# Internet Gateway for VPC B
resource "aws_internet_gateway" "gw_b" {
  vpc_id = aws_vpc.vpc_b.id
  tags = {
    Name = "VPC-B IGW"
  }
}
