#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ross-jm
# Purpose: dockge install script.

# Variables 
COMPOSE_FILE="https://dockge.kuma.pet/compose.yaml?port=5001&stacksPath=%2Fopt%2Fstacks"
HOST_IP=$(hostname -I | awk '{print $1}')

# Create directories that store your stacks and store Dockge's stack
mkdir -p /opt/stacks /opt/dockge
cd /opt/dockge

# Download your compose.yaml
curl $COMPOSE_FILE --output compose.yaml

# Start the Server
docker compose up -d

# Display the message with the IP address and port
echo "Dockge has been installed and is now running at http://${HOST_IP}:5001"


