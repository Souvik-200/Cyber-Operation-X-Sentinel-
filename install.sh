#!/bin/bash
chmod +x sentinel.sh
chmod +x modules/*.sh
pip3 install -r requirements.txt
mkdir -p logs reports
echo "Installation Complete."
