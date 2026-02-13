#!/bin/bash

RESULT_FILE="logs/detection_results.json"

CONNECTIONS=$(ss -tn | wc -l)

if [ "$CONNECTIONS" -gt 20 ]; then
    echo '{"network_alert": 1}' >> $RESULT_FILE
else
    echo '{"network_alert": 0}' >> $RESULT_FILE
fi
