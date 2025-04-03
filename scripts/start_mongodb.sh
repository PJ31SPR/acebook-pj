#!/bin/bash

echo "Starting MongoDB Docker container..."

# Start Docker if not already running
if ! systemctl is-active docker >/dev/null; then
  echo "Docker not running. Starting Docker service..."
  sudo systemctl start docker
  sleep 5  # Wait for Docker to start
fi

# Check if MongoDB container exists
if docker ps -a -q -f name=mongodb >/dev/null; then
  echo "MongoDB container exists. Checking if it's running..."
  
  # Check if container is running
  if ! docker ps -q -f name=mongodb >/dev/null; then
    echo "MongoDB container is not running. Starting it..."
    docker start mongodb
  else
    echo "MongoDB container is already running."
  fi
else
  echo "MongoDB container not found. Starting a new one..."
  docker run -d --name mongodb -p 27017:27017 mongo:latest
fi

# Exit successfully
exit 0