# Add route for VPC A to VPC B via Peering
resource "aws_route" "route_to_vpc_b" {
  route_table_id         = aws_route_table.rt_public_a.id
  destination_cidr_block = aws_vpc.vpc_b.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peer_connection.id
}

# Add route for VPC B to VPC A via Peering
resource "aws_route" "route_to_vpc_a" {
  route_table_id         = aws_route_table.rt_public_b.id
  destination_cidr_block = aws_vpc.vpc_a.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peer_connection.id
}
