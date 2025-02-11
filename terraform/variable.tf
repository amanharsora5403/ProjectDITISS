# variables.tf

# AWS region where you want to deploy your EC2 instance
variable "us-east-1" {
  description = "AWS region to deploy EC2 instance"
  default     = "us-east-1"  # You can change this to the region you want
}

# AMI ID for the EC2 instance
variable "ami-085ad6ae776d8f09c" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

# Key Name for SSH access to the EC2 instance
variable "project2" {
  description = "project2"
  type        = string
}

# EC2 Instance type (default to t2.medium)
variable "instance_type" {
  description = "k8s"
  default     = "t2.medium"
}
