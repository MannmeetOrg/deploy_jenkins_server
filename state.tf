terraform {
  backend "s3" {
    bucket = "jenkins-server-ec2"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}
