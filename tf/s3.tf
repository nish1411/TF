provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  backend "s3" {
    bucket         = "my-unique-nish123456"
    key            = "new/tfstate"
    region         = "ap-southeast-1"
    #dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}