variable "project" {
  type = string
  default = "git-actions"
}

variable "env" {
  type = string
  default = "prod"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
  image-name = "${var.project}-${var.env}-${local.image-timestamp}"
}


variable "ami" {
  default = "ami-0d13e3e640877b0b9"
}


