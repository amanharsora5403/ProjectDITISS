variable "aws_region" {
  description = "AWS region to launch the resources"
  type        = string
  default     = "us-east-1"  # Change this to the region you want
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "project2"   # Replace this with your actual key name
}
