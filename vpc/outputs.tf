output "blue_vpc_id" {
  value = aws_vpc.blue.id
}

output "green_vpc_id" {
  value = aws_vpc.green.id
}

output "blue_subnet_cidr_blocks" {
  value = var.blue_subnet_cidr_blocks
}

output "green_subnet_cidr_blocks" {
  value = var.green_subnet_cidr_blocks
}

output "blue_1a_id" {
  value = aws_subnet.blue_1a.id
}

output "blue_1b_id" {
  value = aws_subnet.blue_1b.id
}

output "blue_1c_id" {
  value = aws_subnet.blue_1c.id
}

output "green_1a_id" {
  value = aws_subnet.green_1a.id
}

output "green_1b_id" {
  value = aws_subnet.green_1b.id
}

output "green_1c_id" {
  value = aws_subnet.green_1c.id
}
