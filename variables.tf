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
  description = "EC2 instance type for Jenkins"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for Jenkins EC2 instance"
  type        = string
}

variable "sg_ids" {
  description = "Security group IDs for Jenkins EC2"
  type        = list(string)
}
