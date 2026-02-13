#!/bin/bash

RESULT_FILE="logs/detection_results.json"

CRON_COUNT=$(crontab -l 2>/dev/null | wc -l)

if [ "$CRON_COUNT" -gt 5 ]; then
    echo '{"persistence_alert": 1}' >> $RESULT_FILE
else
    echo '{"persistence_alert": 0}' >> $RESULT_FILE
fi
