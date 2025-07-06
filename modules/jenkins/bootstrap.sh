#!/bin/bash
sudo yum update -y
#JAVA Install
sudo amazon-linux-extras enable corretto17
sudo yum install java-17-amazon-corretto -y
java -version

# JENKINS INSTALL
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo yum install -y jenkins git unzip
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Terraform
  # Install dependencies
  sudo yum install -y unzip curl jq

  # Get latest version
  VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)

  # Download and install
  curl -LO https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
  unzip terraform_${VER}_linux_amd64.zip
  sudo mv terraform /usr/local/bin/
  rm terraform_${VER}_linux_amd64.zip

# Verify
terraform -version

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip && sudo ./aws/install

