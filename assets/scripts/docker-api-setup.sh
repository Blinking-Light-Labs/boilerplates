#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: setup docker API

# Variables
DOCKER_SERVICE_DIR="/etc/systemd/system/docker.service.d"

# Create daemon.json file in /etc/docker
cat <<EOF > /etc/docker/daemon.json
{"hosts": ["tcp://0.0.0.0:2375", "unix:///var/run/docker.sock"]}
EOF

# create the docker.service.d dir
mkdir $DOCKER_SERVICE_DIR

# Add /etc/systemd/system/docker.service.d/override.conf
cat <<EOF > /etc/systemd/system/docker.service.d/override.conf
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd
EOF

# Reload the systemd daemon
systemctl daemon-reload

# Restart docker
systemctl restart docker.service