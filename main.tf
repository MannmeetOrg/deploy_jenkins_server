# terraform-jenkins-server


module "jenkins" {
  source = "./modules/jenkins"

  jenkins_ami_id        = var.ami_id
  jenkins_instance_type = var.instance_type
  jenkins_subnet_id     = var.subnet_id
  jenkins_sg_id         = var.security_group_ids
  jenkins_key_pair      = var.key_name
}
