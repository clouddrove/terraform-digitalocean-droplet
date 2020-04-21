#!/bin/bash
apt-get update
apt-get install python
sudo adduser ubuntu --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
usermod -aG sudo ubuntu
