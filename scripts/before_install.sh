#!/bin/bash
# Create application directory if it doesn't exist
mkdir -p /home/ec2-user/acebook-node-template

# Clean up previous deployment (optional)
rm -rf /home/ec2-user/acebook-node-template/*

# Log the start of deployment
echo "Beginning deployment at $(date)" > /home/ec2-user/deployment_log.txt