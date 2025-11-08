#!/bin/bash
# System Update and Cleanup Script

LOG_FILE="$HOME/update_cleanup.log"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "[$TIMESTAMP] Starting system update..." >> "$LOG_FILE"

# Update package lists and upgrade system
sudo apt update -y && sudo apt upgrade -y >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "[$TIMESTAMP] System updated successfully." >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] System update failed!" >> "$LOG_FILE"
fi

echo "[$TIMESTAMP] Performing cleanup..." >> "$LOG_FILE"
sudo apt autoremove -y && sudo apt clean >> "$LOG_FILE" 2>&1

echo "[$TIMESTAMP] Cleanup completed." >> "$LOG_FILE"
