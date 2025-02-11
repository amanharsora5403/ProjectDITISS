variable "aws_region" {
  description = "AWS region to launch the resources"
  type        = string
  default     = "us-east-1"  # You can change this default to any region you prefer
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "project2"   # Replace this with your actual key name (ensure it matches your key)
}
