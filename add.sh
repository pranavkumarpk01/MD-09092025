#!/bin/bash

# Define the source directory and backup directory
SOURCE_DIR="/home/ubuntu/source"
BACKUP_DIR="$HOME/backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Check if source directory exists
if [ -d "$SOURCE_DIR" ]; then
    # Copy files to backup directory
    cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"/
    echo "Backup completed! Files copied to $BACKUP_DIR"
else
    echo "Source directory $SOURCE_DIR does not exist!"
fi

