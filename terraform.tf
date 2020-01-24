provider "aws" {

  region  = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "source-bucket-vik"
    key    = "terraform/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
