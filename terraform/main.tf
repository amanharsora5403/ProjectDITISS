provider "aws" {
  region = us-east-1  # Variable for flexibility
}

# Use the default security group in your VPC for simplicity
resource "aws_instance" "t2_medium_instance" {
  ami           = "ami-085ad6ae776d8f09c"  # Use the desired AMI for your region
  instance_type = "t2.medium"              # Instance type
  key_name      = project2             # Use your SSH key name

  # No custom security group, we will use default
  vpc_security_group_ids = [aws_security_group.default.id]

  tags = {
    Name = "k8s-instance"
  }

  # Instance metadata options to reduce delays on startup
  metadata_options {
    http_tokens = "required"
    http_endpoint = "enabled"
  }
}
