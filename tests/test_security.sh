#!/bin/bash

# Test for security checks in deploy.sh

SCRIPT_PATH="./deploy.sh"

# 1. Test missing .env file
rm -f .env
OUTPUT=$("$SCRIPT_PATH" --dry-run 2>&1)
if [[ "$OUTPUT" == *"ERROR: .env file missing or empty"* ]]; then
    echo "PASSED: Missing/Empty .env detection"
else
    echo "FAILED: Did not detect missing/empty .env"
    echo "Output was: $OUTPUT"
    exit 1
fi

# 2. Test existing .env file
echo "VAR=value" > .env
OUTPUT=$("$SCRIPT_PATH" --dry-run 2>&1)
if [[ "$OUTPUT" == *"ERROR: .env file missing or empty"* ]]; then
    echo "FAILED: False positive .env detection"
    exit 1
else
    echo "PASSED: .env detection works"
fi
