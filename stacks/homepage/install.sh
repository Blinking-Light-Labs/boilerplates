#!/usr/bin/env bash

# Create Docker Volumes
docker volume create homepage-config
docker volume create homepage-config-images
docker volume create code-server-config

# Create Networks
docker network create homepage_network