terraform {
  backend "s3" {
    bucket = "rshdan-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"

  }
}
