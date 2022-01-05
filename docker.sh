#!/bin/bash
# makes debconf use a frontend that expects no interactive input at all, preventing it from even trying to access stdin
export DEBIAN_FRONTEND=noninteractive
echo "Starting docker setup"
apt-get update
apt-get install ca-certificates curl gnupg lsb-release -y > /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y > /dev/null
echo "Docker setup complete"