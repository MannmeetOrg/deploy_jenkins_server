variable "ami_id" {
  description = "AMI ID for Jenkins server"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for Jenkins server"
  type        = string
}

variable "region" {
  description = "AWS region"
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

variable "sg_ids" {
  description = "Security group IDs for Jenkins EC2"
  type        = list(string)
}

variable "key_pair" {
  description = "Key pair name for Jenkins server"
  type        = string
}
