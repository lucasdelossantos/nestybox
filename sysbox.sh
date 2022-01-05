#!/bin/bash
# makes debconf use a frontend that expects no interactive input at all, preventing it from even trying to access stdin
export DEBIAN_FRONTEND=noninteractive
echo "Download sysbox release for Ubuntu"
wget https://downloads.nestybox.com/sysbox/releases/v0.4.1/sysbox-ce_0.4.1-0.ubuntu-bionic_amd64.deb
echo "Install prereq for sysbox"
apt-get install jq -y > /dev/null
echo "Install Sysbox"
dpkg -i sysbox-ce_0.4.1-0.ubuntu-bionic_amd64.deb
