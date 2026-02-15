# Tech Stack - Homelab

## Infrastructure
- **Server OS:** Void Linux (Running on a notebook with 8GB RAM and NVIDIA GPU)
- **Workstation OS:** Arch Linux (Main environment for development and study)
- **Containerization:** Docker & Docker Compose
- **Orchestration & Automation:** Ansible (for host configuration and container management)

## Service Categories
### Monitoring & Observability
- **Metrics Collection:** Prometheus, Node Exporter
- **Visualization:** Grafana
- **Log Management:** Dozzle
- **System Health:** Uptime Kuma

### Media Ecosystem
- **Video:** Plex
- **Audiobooks/Podcasts:** Audiobookshelf
- **Books/Manga:** Kavita

### Utilities
- **File Management:** FileBrowser
- **Dashboard:** Homepage
- **Auto-Updates:** Watchtower
- **Tunnels:** Playit.gg
- **Container Monitoring:** ctop

### Network Security
- **DNS/Ads:** AdGuard Home (Profiles: ads)

### Gaming
- **Server:** Minecraft (Fabric 1.21.1)

## Development & Deployment
- **Deployment Strategy:** GitOps (Implemented via cron-triggered deploy.sh)
- **Secrets Management:** Environment variables (.env)