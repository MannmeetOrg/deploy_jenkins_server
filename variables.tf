
variable "ami_id" {
  description = "Jenkins AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type for Jenkins server"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for Jenkins server"
  type        = string
}
variable "key_name" {}

variable "sg_ids" {}

variable "security_group_ids" {
  type = list(string)
}
variable "region" {}

variable "vpc_id" {}
variable "vpc" {}