#!/bin/bash

# Test for systemd unit file existence

SERVICE_FILE="homelab-deploy.service"
TIMER_FILE="homelab-deploy.timer"

if [ -f "$SERVICE_FILE" ] && [ -f "$TIMER_FILE" ]; then
    echo "PASSED: systemd unit files found"
    exit 0
else
    echo "FAILED: systemd unit files not found"
    exit 1
fi