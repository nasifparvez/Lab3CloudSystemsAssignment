variable "aws_region" {
  description = "The AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "aws_credentials_file" {
  description = "Path to the AWS shared credentials file"
  type        = list(string)
  default     = ["./credentials"]
}
