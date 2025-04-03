#!/bin/bash
# Navigate to app directory
cd /home/ec2-user/app

# Install dependencies
npm install

# If you need to build your application
npm run build

# Log dependencies installed
echo "Dependencies installed at $(date)" >> /home/ec2-user/deployment_log.txt