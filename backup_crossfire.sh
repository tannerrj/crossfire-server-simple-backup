#!/bin/bash

# Define the source directory and backup filename
src_dir="/usr/games/crossfire/var/crossfire"
backup_filename="crossfire_backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Check if the source directory exists
if [ ! -d "$src_dir" ]; then
  echo "Source directory does not exist: $src_dir"
  exit 1
fi

# Create the tar.gz backup
tar -czvf "$backup_filename" "$src_dir"

# Check the exit status of the tar command
if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_filename"
else
  echo "Error: Backup creation failed."
  exit 1
fi

# Check if the backup file exists after creation
if [ -e "$backup_filename" ]; then
  echo "Backup file exists: $backup_filename"
else
  echo "Error: Backup file not found: $backup_filename"
fi