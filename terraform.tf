provider "aws" {
  region  = "${var.region}"
}


terraform {
  backend "s3" {
    bucket = "sample-bucket-vivek"
    key    = "sample-state.tfstate"
    region = "ap-south-1"
  }
}
