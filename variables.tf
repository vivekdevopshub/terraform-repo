variable "region" {
  default = "ap-south-1"
}
variable "count_instance" {
  default = 1
}

variable "key_name" {
  description = "Private key name to use with instance"
  default     = "terraform"


variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "Base AMI to launch the instances"

  # AWS linux ami image
  default = "ami-0217a85e28e625474"
}
