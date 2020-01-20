
# Use AWS Terraform provider
provider "aws" {
  region = "ap-south-1"
#  version = "~> 0.11
}

# Create EC2 instance
resource "aws_instance" "default" {
  ami                    = "ami-0217a85e28e625474"
  count                  = "1"
  key_name               = "terraform"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  source_dest_check      = false
  instance_type          = "t2.micro"

  tags {
    Name = "terraform-default"
  }
}

# Create Security Group for EC2
resource "aws_security_group" "default" {
  name = "terraform-default-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-vik"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

