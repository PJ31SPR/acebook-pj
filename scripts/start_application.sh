#!/bin/bash
# Navigate to app directory
cd /home/ec2-user/acebook-node-template

# Install PM2 if not already installed
npm install pm2 -g

# Start application with PM2
# Stop the app if it's already running
# pm2 stop app || true
# pm2 delete app || true

# Start the app
pm2 start npm -- start

# Save PM2 configuration to survive reboots
pm2 save

# Log application start
echo "Application started at $(date)" >> /home/ec2-user/deployment_log.txt