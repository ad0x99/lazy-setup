#!/bin/bash

# This script is used for installing filebrowser, a self-host file management
# Learn more about filebrowser (https://github.com/filebrowser/filebrowser)

path=~/docker/filebrowser

echo "🚀 Creating filebrowser inside docker folder..."
mkdir -p $path
sleep 1

echo "🚀 Creating filebrowser.db & .filebrowser.json file..."
touch $path/filebrowser.db
touch $path/.filebrowser.json
sleep 1

echo "🚀 Adding config contents to your .filebrowser.json..."
echo '{
  "port": 80,
  "baseURL": "",
  "address": "",
  "log": "stdout",
  "database": "/database.db",
  "root": "/srv"
}' >>$path/.filebrowser.json
sleep 1

echo "🎉 DONE 🎉"
