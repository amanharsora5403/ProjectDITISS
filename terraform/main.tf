provider "aws" {
  region = var.us-east-1  # Use the AWS region variable for flexibility
}

resource "aws_security_group" "allow_all" {
  name_prefix = "allow_all_"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "t2_medium_instance" {
  ami           = ami-085ad6ae776d8f09c          # Use variable for AMI ID
  instance_type = t2.medium  # Use variable for instance type
  key_name      = project2      # Use variable for key name

  security_group = aws_security_group.allow_all.name

  tags = {
    Name = "k8s"
  }
}
