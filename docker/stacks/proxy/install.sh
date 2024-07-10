#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: proxy Stack deployment

# Create docker volumes
docker volume create playit-volume
  
# Create Networks
docker network create proxy-network