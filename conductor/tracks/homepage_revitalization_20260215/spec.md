# Specification - Homepage Dashboard Revitalization

## Overview
The goal of this track is to fix and enhance the Homelab dashboard (Homepage). Currently, it doesn't correctly display running services. We will update the configuration to show all core services, integrate status/resource widgets for an "Informative & Data-Rich" look, and organize everything into functional categories.

## Functional Requirements
- **Service Integration:** Configure the following services in `services.yaml`:
    - **Media:** Plex, Audiobookshelf, Kavita.
    - **Monitoring:** Grafana, Prometheus, Uptime Kuma.
    - **Infrastructure/Utilities:** Docker, Watchtower, FileBrowser.
- **Data-Rich Widgets:** 
    - Implement resource usage widgets (CPU, RAM, Disk) in `widgets.yaml`.
    - Add status pings or API integrations for each service to show real-time availability.
- **Categorization:** Group services into logical sections: `Media`, `Monitoring`, and `Infrastructure`.
- **Security:** Use environment variable placeholders (e.g., `{{HOMEPAGE_VAR_API_KEY}}`) for sensitive data like API keys.

## Non-Functional Requirements
- **Aesthetic:** Informative and data-rich. Use widgets to provide at-a-glance system health.
- **Maintainability:** Ensure YAML configurations are clean and follow Homepage documentation standards.

## Acceptance Criteria
- [ ] Homepage correctly displays all 9 specified services.
- [ ] Each service shows an "Up" status or relevant live data.
- [ ] Resource widgets (CPU/RAM) are visible and functional.
- [ ] Services are grouped into 'Media', 'Monitoring', and 'Infrastructure' sections.
- [ ] No hardcoded secrets in the configuration files.

## Out of Scope
- Running or restarting Docker containers (this is a configuration-only track).
- Configuring the services themselves (e.g., setting up Plex libraries).
