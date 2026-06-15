variable "REGION" {
  default = "eu-west-1"
}

variable "ZONE1" {
  default = "eu-west-1a"
}

variable "ZONE2" {
  default = "eu-west-1b"
}

variable "ZONE3" {
  default = "eu-west-1c"
}

variable "AMIS" {
  default = {
    eu-west-1 = "ami-006b300825259765d"
  }
}

variable "USER" {
  default = "ubuntu"
}

variable "PUB_KEY" {
  default = "eoin_ssh"
}

variable "MYIP" {
  default = ""
}