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

# Security Check: Ensure .env exists and is not empty
if [ ! -s ".env" ]; then
    log "ERROR: .env file missing or empty. Deployment aborted." >&2
    exit 1
fi

ANSIBLE_INVENTORY="ansible/inventory.ini"
ANSIBLE_PLAYBOOK="ansible/setup.yml"

# 1. Pull latest changes
log "Pulling latest changes..."
if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Executing: git pull origin main"
else
    git pull origin main
fi

# 2. Run Ansible setup
log "Running Ansible setup..."
if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Executing: ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOK"
else
    ansible-playbook -i "$ANSIBLE_INVENTORY" "$ANSIBLE_PLAYBOOK"
fi

# 3. Deploy containers
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
