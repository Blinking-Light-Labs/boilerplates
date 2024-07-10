#!/usr/bin/env bash

# Create Docker Volumes
docker volume create phpipam-db-data
docker volume create phpipam-logo
docker volume create phpipam-ca

# Create Networks
docker network create phpipam_network


