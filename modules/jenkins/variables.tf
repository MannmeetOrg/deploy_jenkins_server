variable "vpc_id" {
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

variable "ami_id" {
  description = "ami id of jenkins image"
  type        = string
}

variable "key_pair" {
  description = "Key pair name for Jenkins server"
  type        = string
}


variable "sg_ids" {
  type = list(string)
}

variable "region" {}