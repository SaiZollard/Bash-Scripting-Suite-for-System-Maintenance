#!/bin/bash
# Automated Backup Script

BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="$HOME/backups"
LOG_FILE="$HOME/backup.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DEST"

echo "[$TIMESTAMP] Starting backup..." >> "$LOG_FILE"

tar -czf "$BACKUP_DEST/backup_$TIMESTAMP.tar.gz" "$BACKUP_SRC" 2>> "$LOG_FILE"

if [ $? -eq 0 ]; then
    echo "[$TIMESTAMP] Backup completed successfully." >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] Backup failed!" >> "$LOG_FILE"
fi
