# Route table for VPC A Public Subnet
resource "aws_route_table" "rt_public_a" {
  vpc_id = aws_vpc.vpc_a.id
}

resource "aws_route" "route_to_internet_a" {
  route_table_id         = aws_route_table.rt_public_a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw_a.id
}

resource "aws_route_table_association" "assoc_public_a" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.rt_public_a.id
}

# Route table for VPC B Public Subnet
resource "aws_route_table" "rt_public_b" {
  vpc_id = aws_vpc.vpc_b.id
}

resource "aws_route" "route_to_internet_b" {
  route_table_id         = aws_route_table.rt_public_b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw_b.id
}

resource "aws_route_table_association" "assoc_public_b" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.rt_public_b.id
}
