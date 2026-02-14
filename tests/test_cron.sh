#!/bin/bash

# Test for cron configuration generation

CRON_FILE="homelab-deploy.cron"

if [ ! -f "$CRON_FILE" ]; then
    echo "FAILED: $CRON_FILE not found"
    exit 1
fi

# Check for 1-minute interval and correct script path
CONTENT=$(cat "$CRON_FILE")
if [[ "$CONTENT" == "* * * * *"* ]] && [[ "$CONTENT" == *"deploy.sh"* ]]; then
    echo "PASSED: cron configuration is valid"
    exit 0
else
    echo "FAILED: cron configuration is invalid"
    echo "Content was: $CONTENT"
    exit 1
fi
