#!/bin/bash

RESULT_FILE="logs/detection_results.json"

HIGH_CPU=$(ps aux --sort=-%cpu | awk 'NR==2 {print $3}')

if (( $(echo "$HIGH_CPU > 50" | bc -l) )); then
    echo '{"process_alert": 1}' > $RESULT_FILE
else
    echo '{"process_alert": 0}' > $RESULT_FILE
fi
