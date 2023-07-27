#!/bin/bash

# Update the package manager
sudo apt update

# Install software-properties-common to add repositories
sudo apt install -y software-properties-common

# Add the Ansible PPA to the package manager
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt install -y ansible
