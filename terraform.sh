#!/bin/bash

# Install unzip (required to extract Terraform binary)
sudo apt update
sudo apt install -y unzip

# Download the latest Terraform binary (adjust the version if needed)
TERRAFORM_VERSION="0.14.10"
wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -O terraform.zip

# Unzip and move Terraform binary to /usr/local/bin
sudo unzip terraform.zip -d /usr/local/bin/

# Make the Terraform binary executable
sudo chmod +x /usr/local/bin/terraform

# Clean up downloaded zip file
rm terraform.zip
