#!/bin/bash

sudo apt update -y

sudo apt upgrade -y

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add the current user to the 'docker' group to run the docker commands without 'sudo' 

sudo usermod -aG docker $USER

# start and enable docker service

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo systemctl status docker.service

# print the docker version

docker --version

