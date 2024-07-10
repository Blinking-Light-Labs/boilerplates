#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Monitor Stack deployment

# Create docker volumes
  docker volume create influxdb-volume
  docker volume create grafana-volume

# Create Networks
docker network create monitoring-network
