provider "aws" {
  region = "us-east-1"  # You can customize this region or get it from environment variable
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

resource "aws_instance" "m2_medium_instance" {
  ami           = "ami-085ad6ae776d8f09c"  # Change this to the desired AMI for your region
  instance_type = "m2.medium"
  key_name      = "project2"  # Replace with your EC2 key name

  security_group = aws_security_group.allow_all.name

  tags = {
    Name = "m2-medium-instance"
  }
}
