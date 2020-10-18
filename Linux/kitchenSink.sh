#!/bin/bash

OUTPUT_DIRECTORY=/tmp/
LOG_FILE_NAME=ports.log

# Get updates for ubuntu
#echo "Running apt to get updates"
> $OUTPUT_DIRECTORY/updates.log
sudo apt -y update
sudo apt list --upgradable | tee -a $OUTPUT_DIRECTORY/updates.log
sudo apt upgrade -y | tee -a $OUTPUT_DIRECTORY/updates.log 

# Look for ports that are open
echo "Running netstat to check for open ports" 
sudo netstat -anp | grep -i "TCP" | grep -v 'tcp6' | awk '{print $4}' | awk -F ":" '{print $2}' | sort -u | tee -a $OUTPUT_DIRECTORY/$LOG_FILE_NAME

# Look for services using systemctl
echo "Displaying system services"
sudo systemctl --type=service | tee -a $OUTPUT_DIRECTORY/services.log
