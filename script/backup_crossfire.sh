#!/bin/bash

# Script: backup_crossfire.sh
# Author: Rick Tanner via ChatGPT
# Description: This script creates a tar.gz backup of the `/usr/games/crossfire/var/crossfire` directory, with a date stamp in the filename.
# Project URL: https://github.com/tannerrj/crossfire-server-simple-backup

# Step 1: Define the source directory and backup filename
src_dir="/usr/games/crossfire/var/crossfire"
backup_filename="crossfire_backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Step 2: Check if the source directory exists
if [ ! -d "$src_dir" ]; then
  echo "Error: Source directory does not exist: $src_dir"
  exit 1
fi

# Step 3: Create the tar.gz backup
tar -czvf "$backup_filename" "$src_dir"

# Step 4: Check the exit status of the tar command
if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_filename"
else
  echo "Error: Backup creation failed."
  exit 1
fi

# Step 5: Check if the backup file exists after creation
if [ -e "$backup_filename" ]; then
  echo "Backup file exists: $backup_filename"
else
  echo "Error: Backup file not found: $backup_filename"
  exit 1
fi