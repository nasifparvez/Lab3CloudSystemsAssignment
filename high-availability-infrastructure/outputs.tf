output "blue_elb_dns_name" {
  value = aws_lb.blue_elb.dns_name
}

output "green_elb_dns_name" {
  value = aws_lb.green_elb.dns_name
}
