
# Use AWS Terraform provider 
3 provider "aws" { 
4   region = "ap-south-1" 
5 #  version = "~> 0.11 
6 } 
7 
 
8 # Create EC2 instance 
9 resource "aws_instance" "default" { 
10   ami                    = "${var.ami}" 
11   count                  = "${var.count_instance}" 
12   key_name               = "${var.key_name}" 
13   vpc_security_group_ids = ["${aws_security_group.default.id}"] 
14   source_dest_check      = false 
15   instance_type          = "${var.instance_type}" 
16 
 
17   tags { 
18     Name = "terraform-default" 
19   } 
20 } 
21 
 
22 # Create Security Group for EC2 
23 resource "aws_security_group" "default" { 
24   name = "terraform-default-sg" 
25 
 
26   ingress { 
27     from_port   = 80 
28     to_port     = 80 
29     protocol    = "tcp" 
30     cidr_blocks = ["0.0.0.0/0"] 
31   } 
32 
 
33   ingress { 
34     from_port   = 22 
35     to_port     = 22 
36     protocol    = "tcp" 
37     cidr_blocks = ["0.0.0.0/0"] 
38   } 
39 
 
40 } 
41 
 
42 
 
43 # Terraform state will be stored in S3 
44 terraform { 
45   backend "s3" { 
46     bucket = "terraform-bucket-vik" 
47     key    = "terraform.tfstate" 
48     region = "ap-south-1" 
49   } 
50 } 

