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

variable "key_name" {
  description = "Key pair name for Jenkins server"
  type        = string
}

variable "jenkins_s3" {
  description = "S3 bucket Jenkins Role"
  type        = string
}