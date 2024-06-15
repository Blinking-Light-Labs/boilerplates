#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ross-jm
# Purpose: raspberry pi docker install script.

# functions

system_update() {
    sudo apt update
sudo apt upgrade -y
}

# Do a system update
system_update

# Install docker
curl -sSL https://get.docker.com | sh

# add current user to docker group
sudo usermod -aG docker $USER

# reboot the pi
reboot
