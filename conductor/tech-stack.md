# Tech Stack - Homelab

## Infrastructure
- **Server OS:** Void Linux (Running on a notebook with 8GB RAM and NVIDIA GPU)
- **Workstation OS:** Arch Linux (Main environment for development and study)
- **Containerization:** Docker & Docker Compose
- **Orchestration & Automation:** Ansible (for host configuration and container management)

## Monitoring & Observability
- **Metrics Collection:** Prometheus, Node Exporter
- **Visualization:** Grafana
- **Log Management:** Dozzle
- **System Health:** Uptime Kuma

## Services & Applications
- **Media Ecosystem:** Plex, Audiobookshelf, Kavita
- **File Management:** FileBrowser
- **Network Security:** AdGuard Home (Profiles: ads)
- **Utilities:** Watchtower (Auto-updates), Homepage (Dashboard), ctop (CLI container monitoring)
- **Tunnels:** Playit.gg (for external access)
- **Gaming:** Minecraft (Fabric 1.21.1)

## Development & Deployment
- **Deployment Strategy:** GitOps (Implemented via cron-triggered deploy.sh)
- **Secrets Management:** Environment variables (.env)
