# terraform-jenkins-server


module "jenkins" {
  source = "./modules/jenkins"

   ami_id        = var.ami_id
   region        = var.region
   instance_type = var.instance_type
   subnet_id     = var.subnet_id
   sg_ids        = var.security_group_ids
   key_pair      = var.key_name
}
