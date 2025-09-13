# EC2 in Public Subnet A
resource "aws_instance" "public_instance_a" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI (Amazon Linux 2)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_a.id
  associate_public_ip_address = true
  security_groups = ["public_sg"]

  tags = {
    Name = "Public Instance A"
  }
}

# EC2 in Private Subnet A
resource "aws_instance" "private_instance_a" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet_a.id
  associate_public_ip_address = false
  security_groups = ["private_sg"]

  tags = {
    Name = "Private Instance A"
  }
}
