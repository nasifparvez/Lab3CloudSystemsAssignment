variable "blue_vpc_cidr_block" {
  description = "CIDR block for the blue VPC"
  type        = string
  default     = "100.64.0.0/16"
}

variable "blue_subnet_cidr_blocks" {
  description = "List of CIDR blocks for blue subnets"
  type        = list(string)
  default     = ["100.64.10.0/24", "100.64.20.0/24", "100.64.30.0/24"]
}

variable "blue_subnet_availability_zones" {
  description = "List of availability zones for blue subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "green_vpc_cidr_block" {
  description = "CIDR block for the green VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "green_subnet_cidr_blocks" {
  description = "List of CIDR blocks for green subnets"
  type        = list(string)
  default     = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]
}

variable "green_subnet_availability_zones" {
  description = "List of availability zones for green subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
