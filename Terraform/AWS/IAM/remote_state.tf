terraform {
  backend "s3" {
    bucket = "terraform-remote-state-file-591622790282"
    key    = "IAM/terraform.tfstate"
    region = "eu-west-1"
  }
}
