resource "aws_vpc_peering_connection" "peer_connection" {
  vpc_id        = aws_vpc.vpc_a.id
  peer_vpc_id   = aws_vpc.vpc_b.id
  auto_accept   = false
  tags = {
    Name = "VPC-A to VPC-B Peering"
  }
}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  vpc_peering_connection_id = aws_vpc_peering_connection.peer_connection.id
  auto_accept               = true
}
