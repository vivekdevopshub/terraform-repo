provider "aws" {
  region  = "${var.region}"
}


terraform {
  backend "s3" {
    bucket = "source-bucket-vivek"
    key    = "sample-state.tfstate"
    region = "ap-south-1"
  }
}
