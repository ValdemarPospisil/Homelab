#!/bin/bash

# deploy.sh - Automated deployment script for Homelab

set -e # Exit on error

DRY_RUN=false
if [[ "$1" == "--dry-run" ]]; then
    DRY_RUN=true
    echo "[DRY RUN] Starting deployment..."
fi

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

# 1. Pull latest changes
log "Pulling latest changes..."
if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Executing: git pull origin main"
else
    git pull origin main
fi

# 2. Deploy containers
log "Deploying containers..."
if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Executing: docker-compose up -d --remove-orphans"
else
    docker-compose up -d --remove-orphans
fi

if [ "$DRY_RUN" = true ]; then
    log "[DRY RUN] Deployment complete."
else
    log "Deployment complete."
fi
