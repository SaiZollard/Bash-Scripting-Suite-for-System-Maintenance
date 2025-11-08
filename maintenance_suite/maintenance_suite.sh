#!/bin/bash
# ===========================================
# Enhanced System Maintenance Suite (v2.0)
# ===========================================

LOG_DIR="$HOME/maintenance_logs"
mkdir -p "$LOG_DIR"
SUITE_LOG="$LOG_DIR/suite_$(date +%Y-%m-%d).log"

log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1" | tee -a "$SUITE_LOG"
}

while true; do
    clear
    echo "======================================"
    echo "        SYSTEM MAINTENANCE SUITE      "
    echo "======================================"
    echo "1. Run Backup"
    echo "2. Update and Clean System"
    echo "3. Monitor Logs"
    echo "4. View Suite Log"
    echo "5. Exit"
    echo "--------------------------------------"
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            log "Running backup script..."
            if ./backup.sh; then
                log "Backup completed successfully."
            else
                log "Backup failed!"
            fi
            read -p "Press Enter to continue..."
            ;;
        2)
            log "Starting system update & cleanup..."
            if ./update_cleanup.sh; then
                log "System update and cleanup completed."
            else
                log "Update & cleanup failed!"
            fi
            read -p "Press Enter to continue..."
            ;;
        3)
            log "Monitoring system logs..."
            if ./log_monitor.sh; then
                log "Log monitoring completed."
            else
                log "Log monitoring failed!"
            fi
            read -p "Press Enter to continue..."
            ;;
        4)
            echo "--------------------------------------"
            echo "Viewing Suite Log:"
            cat "$SUITE_LOG"
            echo "--------------------------------------"
            read -p "Press Enter to return to menu..."
            ;;
        5)
            log "Exiting Maintenance Suite."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            read -p "Press Enter to continue..."
            ;;
    esac
done

