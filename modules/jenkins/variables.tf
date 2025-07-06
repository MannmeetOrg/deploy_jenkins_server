variable "vpc_id" {
  description = "VPC ID for the Jenkins server"
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
  description = "AMI ID for Jenkins server"
  type        = string
}

variable "key_pair" {
  description = "Key pair name for Jenkins server"
  type        = string
}

variable "sg_ids" {
  description = "List of security group IDs (optional if creating inside module)"
  type        = list(string)
  default     = []
}

variable "region" {
  description = "AWS region"
  type        = string
}
