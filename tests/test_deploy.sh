#!/bin/bash

# Test for deploy.sh dry-run mode

SCRIPT_PATH="./deploy.sh"

if [ ! -f "$SCRIPT_PATH" ]; then
    echo "FAILED: $SCRIPT_PATH not found"
    exit 1
fi

chmod +x "$SCRIPT_PATH"

OUTPUT=$("$SCRIPT_PATH" --dry-run)
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo "FAILED: deploy.sh exited with code $EXIT_CODE"
    exit 1
fi

if [[ "$OUTPUT" == *"DRY RUN"* ]]; then
    echo "PASSED: dry-run mode detected"
else
    echo "FAILED: Output did not contain 'DRY RUN'"
    echo "Output was: $OUTPUT"
    exit 1
fi
