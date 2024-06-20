#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ross-jm
# Purpose: portainer install script.

# Variables
HOST_IP=$(hostname -I | awk '{print $1}')

# create docker portainer volume
docker volume create portainer_data

# download and install the Portainer Server container
docker run -d -p 80:8000 -p 443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ee:latest

# verify portainer is running
docker ps

# take a quick nap before showing last message
sleep 5

# print message indicating the IP address and port where portainer is running.
echo "Portainer has been installed and is now running at https://${HOST_IP}"
