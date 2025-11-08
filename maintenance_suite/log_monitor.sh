#!/bin/bash
# Log Monitoring Script

LOG_FILE="/var/log/syslog"          # System log file to monitor
ALERT_LOG="$HOME/log_alerts.log"    # Where alerts will be stored
KEYWORDS=("error" "fail" "critical")
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "[$TIMESTAMP] Monitoring logs for issues..." >> "$ALERT_LOG"

FOUND_ISSUE=false

for keyword in "${KEYWORDS[@]}"; do
    if grep -iq "$keyword" "$LOG_FILE"; then
        echo "[$TIMESTAMP] Found keyword: $keyword" >> "$ALERT_LOG"
        grep -i "$keyword" "$LOG_FILE" >> "$ALERT_LOG"
        FOUND_ISSUE=true
    fi
done

if [ "$FOUND_ISSUE" = true ]; then
    echo "[$TIMESTAMP] ALERT: Issues detected in system logs!" >> "$ALERT_LOG"
else
    echo "[$TIMESTAMP] No critical issues found." >> "$ALERT_LOG"
fi
