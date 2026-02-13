#!/bin/bash

RESULT_FILE="logs/detection_results.json"

FAILED=$(grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l)

if [ "$FAILED" -gt 5 ]; then
    echo '{"auth_alert": 1}' >> $RESULT_FILE
else
    echo '{"auth_alert": 0}' >> $RESULT_FILE
fi
