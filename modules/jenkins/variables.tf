variable "ami_id" {
  description = "AMI ID for Jenkins server"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "key_pair" {
  description = "EC2 Key Pair Name"
  type        = string
}
variable "jenkins_s3" {}