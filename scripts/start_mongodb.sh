#!/bin/bash
echo "Starting MongoDB Docker container..."
# Ensure Docker is running
sudo systemctl start docker
# Check if MongoDB container is already running
if ! docker ps | grep -q "mongodb"; then
  echo "MongoDB container not found. Starting a new one..."
  docker run -d --name mongodb --restart=always -p 27017:27017 mongo:8.0
else
  echo "MongoDB container is already running."
fi