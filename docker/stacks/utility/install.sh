#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: utility Stack deployment

# Create docker volumes
docker volume create uptime-kuma

# Create Networks
docker network create utility-network
