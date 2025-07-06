output "public_ip" {
  value = aws_instance.jenkins.public_ip
}


output "instance_type" {
  value = aws_instance.jenkins.instance_type
}

output "ami_id" {
  value = aws_instance.jenkins.id
}

output "subnet_id" {
  value = aws_instance.jenkins.subnet_id
}

output "sg_id" {
  value = aws_instance.jenkins.security_groups
}


output "key_pair" {
  value = aws_instance.jenkins.key_name
}
