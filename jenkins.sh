#!/bin/bash

# Update the package manager
sudo apt update

# Install Java (OpenJDK) if not already installed
sudo apt install -y openjdk-8-jdk

# Import the Jenkins GPG key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to the package manager
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package manager again to fetch the Jenkins repository information
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on system boot
sudo systemctl enable jenkins
