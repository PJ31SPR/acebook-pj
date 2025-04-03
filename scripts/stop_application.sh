#!/bin/bash
# Navigate to app directory
cd /home/ec2-user/app || exit

# Install PM2 if necessary
which pm2 || npm install pm2 -g

# Stop application
pm2 stop app || true
pm2 delete app || true

# Log application stop
echo "Application stopped at $(date)" >> /home/ec2-user/deployment_log.txt

# Always exit with success so deployment can continue
exit 0