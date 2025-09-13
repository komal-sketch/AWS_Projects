# Public Subnet in VPC A
resource "aws_subnet" "public_subnet_a" {
  vpc_id                  = aws_vpc.vpc_a.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ca-central-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet A"
  }
}

# Private Subnet in VPC A
resource "aws_subnet" "private_subnet_a" {
  vpc_id                  = aws_vpc.vpc_a.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ca-central-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "Private Subnet A"
  }
}

# Public Subnet in VPC B
resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = aws_vpc.vpc_b.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "ca-central-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet B"
  }
}

# Private Subnet in VPC B
resource "aws_subnet" "private_subnet_b" {
  vpc_id                  = aws_vpc.vpc_b.id
  cidr_block              = "10.1.2.0/24"
  availability_zone       = "ca-central-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "Private Subnet B"
  }
}
