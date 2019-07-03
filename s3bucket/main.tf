provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket}"
  acl    = "private"

  tags = {
    Name = "${var.name_tag}"
  }
}
