#!/bin/bash
set -e
# INSTALL JAVA and JENKINS on EC2 instance
  echo "[INFO] Updating system packages..."
  dnf update -y

  echo "[INFO] Installing Java (OpenJDK 17)..."
  dnf install -y java-17-amazon-corretto git

  echo "[INFO] Adding Jenkins repo and importing GPG keys..."
  curl --silent --location https://pkg.jenkins.io/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo
  curl --silent --location https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key | tee /etc/pki/rpm-gpg/RPM-GPG-KEY-jenkins.io
  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  echo "[INFO] Installing Jenkins..."
  dnf install -y jenkins

  echo "[INFO] Enabling and starting Jenkins service..."
  systemctl daemon-reexec
  systemctl enable jenkins
  systemctl start jenkins

  echo "[INFO] Jenkins installation complete."
  echo "[INFO] Fetching initial admin password:"
  cat /var/lib/jenkins/secrets/initialAdminPassword || echo "[WARN] Jenkins password file not found yet — may take a minute."

  echo "[INFO] Listening port check:"
  ss -tuln | grep 8080 || echo "[WARN] Port 8080 not listening — check Jenkins logs."

  echo "[INFO] Done. Visit http://<your-ec2-public-ip>:8080 to access Jenkins."


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

