#!/bin/bash

# Collect static files
echo "Start script"
mkdir -p /home/94r4d0x/.node-red/server/$1
cp -Rv /data/settings.js /home/94r4d0x/.node-red/server/$1
echo "End script"
