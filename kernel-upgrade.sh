#!/bin/bash
# makes debconf use a frontend that expects no interactive input at all, preventing it from even trying to access stdin
export DEBIAN_FRONTEND=noninteractive
echo "Installing Kernel 5.0 on Ubuntu"
apt-get install --install-recommends linux-generic-hwe-18.04 -y > /dev/null