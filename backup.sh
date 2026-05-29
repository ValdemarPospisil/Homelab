#!/bin/bash
# backup.sh - Zálohovací skript pro Homelab konfigurace

# Ukončit skript při jakékoliv chybě
set -e

BACKUP_DIR="/tmp"
BACKUP_NAME="homelab-backup-$(date +%F).tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_NAME"
HOMELAB_PATH="/home/valdemar/homelab"
REMOTE_NAME="gdrive"
REMOTE_DIR="Homelab-Backups"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log "Spouštím zálohování homelabu..."

# 1. Zastavení běžících kontejnerů (kvůli bezpečnosti databází SQLite)
log "Zastavuji Docker kontejnery..."
cd "$HOMELAB_PATH"
docker compose stop

# Ujistíme se, že kontejnery zase zapneme, i kdyby zbytek skriptu selhal
trap 'log "Spouštím Docker kontejnery..."; cd "$HOMELAB_PATH" && docker compose start' EXIT

# 2. Vytvoření komprimovaného archivu složky homelab
log "Vytvářím archiv konfigurací..."
tar --exclude="media" \
    --exclude="books" \
    --exclude="minecraft/data" \
    --exclude="plex/transcode" \
    --exclude="plex/config/Library/Application Support/Plex Media Server/Cache" \
    -czf "$BACKUP_PATH" -C "/home/valdemar" homelab

# 3. Spuštění kontejnerů zpět (proběhne automaticky díky trap EXIT výše)
log "Archiv vytvořen: $BACKUP_NAME"

# 4. Nahrání na Google Drive přes Rclone
log "Nahrávám archiv na Google Drive..."
rclone copy "$BACKUP_PATH" "$REMOTE_NAME:$REMOTE_DIR"

# 5. Smazání lokálního archivu
log "Mažu lokální archiv..."
rm -f "$BACKUP_PATH"

# 6. Smazání záloh starších než 7 dní na Google Drive
log "Čistím staré zálohy na Google Drive (starší než 7 dní)..."
rclone delete "$REMOTE_NAME:$REMOTE_DIR" --min-age 7d

log "Zálohování úspěšně dokončeno!"
