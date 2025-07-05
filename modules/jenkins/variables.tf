variable "vpc_id" {
  description = "Jenkins AMI ID"
  type        = string
}

variable "jenkins_instance_type" {
  description = "Instance type for Jenkins server"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet ID for Jenkins server"
  type        = string
}

variable "security_group_sg_id" {
  description = "Security group ID for Jenkins server"
  type        = string
}

variable "jenkins_key_pair" {
  description = "Key pair name for Jenkins server"
  type        = string
}