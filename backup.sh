#!/bin/bash

# Set source directory to backup
SOURCE_DIR=$1
# Set destination directory for backup
BACKUP_DIR=$2

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Get current timestamp in format "YYYY-MM-DD_HH-MM-SS"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Backup only files modified within the last 24 hours
find "$SOURCE_DIR" -type f -mtime -1 -print0 | tar -czvf "$BACKUP_DIR/backup_"$TIMESTAMP".tar.gz" --null -T - 

echo "Backup completed successfully to $BACKUP_DIR/backup_"$TIMESTAMP".tar.gz"