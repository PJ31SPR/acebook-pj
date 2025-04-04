#!/bin/bash

# Start Docker if not already running
if ! systemctl is-active docker >/dev/null; then
  sudo systemctl start docker
  sleep 5
fi

# Check if container exists
if docker ps -a -q -f name=mongodb >/dev/null; then
  # Check if container is running
  if ! docker ps -q -f name=mongodb >/dev/null; then
    docker start mongodb
  fi
else
  # Create new container
  docker run -d --name mongodb -p 27017:27017 mongo:latest
fi