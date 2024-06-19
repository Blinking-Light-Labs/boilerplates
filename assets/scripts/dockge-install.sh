#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ross-jm
# Purpose: raspberry pi docker install script.

# Variables
HOST_IP=$(hostname -I | awk '{print $1}')
COMPOSE_FILE="https://dockge.kuma.pet/compose.yaml?port=80&stacksPath=%2Fopt%2Fstacks"


# Create directories that store your stacks and store Dockge's stack
mkdir -p /opt/stacks /opt/dockge
cd /opt/dockge

# Download your compose.yaml
curl "$COMPOSE_FILE" --output compose.yaml

# Start the Server
docker compose up -d

# print message indicating the IP address and port where portainer is running.
echo "dockge has been installed and is now running at http://${HOST_IP}:5001"
