#!/bin/bash

source config/config.conf

LOG_FILE="logs/runtime.log"
RESULT_FILE="logs/detection_results.json"

echo "Starting Cyber Operation-X Sentinel..."
echo "{}" > $RESULT_FILE

bash modules/process_monitor.sh
bash modules/network_monitor.sh
bash modules/auth_monitor.sh
bash modules/persistence_check.sh

python3 python/risk_engine.py $RESULT_FILE
python3 python/report_generator.py

echo "Scan Completed. Check reports folder."
