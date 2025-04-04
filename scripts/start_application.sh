#!/bin/bash

# Navigate to app directory
cd /home/ec2-user/acebook-node-template

# Install dependencies if needed
npm install

# Start application in background using PM2
# First check if PM2 is installed
if ! command -v pm2 &> /dev/null; then
  echo "Installing PM2..."
  npm install -g pm2
fi

# Start the application with PM2
pm2 delete acebook 2>/dev/null || true
pm2 start ./bin/www --name acebook