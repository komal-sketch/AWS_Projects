output "vpc_a_id" {
  value = aws_vpc.vpc_a.id
}

output "public_instance_a_ip" {
  value = aws_instance.public_instance_a.public_ip
}
