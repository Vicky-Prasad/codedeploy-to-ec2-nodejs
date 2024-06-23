#!/bin/bash
sudo apt-get -y update

# INSTALL NODEJS - ONLY FOR UBUNTU
sudo apt install nodejs -y

# INSTALL NPM & PM2 - ONLY FOR UBUNTU
sudo apt install npm -y
sudo npm install pm2@latest -g

cd /home/ubuntu
# Start the application using pm2 (or another process manager)
pm2 start app.js --name "my-node-app" --watch

# Ensure PM2 restarts on reboot
pm2 startup systemd
pm2 save

echo "Application has been started on port 3000."

