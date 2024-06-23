#!/bin/bash

# Ensure the environment is updated and Node.js/npm are installed
echo "Updating server and installing Node.js and npm"
sudo apt -y update
sudo apt install -y nodejs
sudo apt install -y npm

# Verify the installation
node -v
npm -v

# Install npm dependencies
echo "Installing npm dependencies..."
cd /home/ubuntu
npm install

echo "After install script completed."
