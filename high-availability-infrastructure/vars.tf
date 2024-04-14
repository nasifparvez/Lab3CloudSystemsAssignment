variable "subnet_ids_blue" {
  description = "List of subnet IDs for blue load balancer"
  type        = list(string)
}

variable "subnet_ids_green" {
  description = "List of subnet IDs for green load balancer"
  type        = list(string)
}


variable "vpc_id_blue" {
  description = "VPC ID for blue load balancer target group"
  type        = string
}

variable "vpc_id_green" {
  description = "VPC ID for green load balancer target group"
  type        = string
}
