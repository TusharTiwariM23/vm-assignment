#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update -y

# Install Nginx
echo "Installing Nginx..."
sudo apt install -y nginx

# Start Nginx service and enable it to run on boot
echo "Starting and enabling Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

# Check the status of Nginx (Optional)
echo "Checking Nginx status..."
sudo systemctl status nginx --no-pager

# Navigate to the Nginx web root directory
echo "Navigating to web directory..."
sudo nano /var/www/html/index.nginx-debian.html

# Restart Nginx to apply changes
echo "Restarting Nginx..."
sudo systemctl restart nginx

# Display external IP address (Run this manually to access the site)
echo "Setup complete! Visit your site at: http://$(curl -s ifconfig.me)"
