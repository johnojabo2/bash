#!/bin/bash
sudo apt update
sudo apt upgrade -y

# Install k3s
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -

# Start k3s
systemctl enable k3s
systemctl start k3s

# Verify k3s installation
k3s kubectl get nodes