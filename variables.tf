variable "region" { 
2   default = "ap-south-1" 
3 } 
4 variable "count_instance" { 
5   default = 1 
6 } 
7 
 
8 variable "key_name" { 
9   description = "Private key name to use with instance" 
10   default     = "terraform" 
11 
 
12 
 
13 variable "instance_type" { 
14   description = "AWS instance type" 
15   default     = "t2.micro" 
16 } 
17 
 
18 variable "ami" { 
19   description = "Base AMI to launch the instances" 
20 
 
21   # AWS linux ami image 
22   default = "ami-0217a85e28e625474" 
23 } 
