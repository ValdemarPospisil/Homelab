# Implementation Plan - Docker Compose & Homepage Refactor

This plan outlines the steps to refactor the `docker-compose.yml` file for professionalization and to synchronize the Homepage dashboard with the existing services.

## Phase 1: Preparation & Analysis
- [x] Task: Audit existing `docker-compose.yml` for Czech comments and redundant notes. 7d67938
- [x] Task: Categorize all services into groups (Media, Monitoring, Utilities, etc.) to define the new order. 7d67938
- [x] Task: Audit `homepage/config/services.yaml` to identify missing entries. 7d67938
- [ ] Task: Conductor - User Manual Verification 'Preparation & Analysis' (Protocol in workflow.md)

## Phase 2: Docker Compose Refactoring
- [x] Task: Translate all Czech comments to English in `docker-compose.yml`. 7d67938
- [x] Task: Remove redundant notes and "AI Slop" from `docker-compose.yml`. 7d67938
- [x] Task: Reorganize `docker-compose.yml` services into categorical groups (alphabetical within groups). 7d67938
- [x] Task: Move `minecraft` and `adguard` services to the end of the file. 7d67938
- [x] Task: Verify YAML syntax validity using `docker-compose config`. 7d67938
- [ ] Task: Conductor - User Manual Verification 'Docker Compose Refactoring' (Protocol in workflow.md)

## Phase 3: Homepage Dashboard Synchronization
- [x] Task: Group `homepage/config/services.yaml` entries into the same categories as the Docker Compose file. 7d67938
- [x] Task: Add missing services to `homepage/config/services.yaml` (excluding AdGuard, ctop, and Minecraft). 7d67938
- [x] Task: Ensure all homepage widgets and icons are correctly configured for the new entries. 7d67938
- [ ] Task: Conductor - User Manual Verification 'Homepage Dashboard Synchronization' (Protocol in workflow.md)

## Phase 4: Verification & Cleanup
- [x] Task: Run `deploy.sh` to apply changes and ensure all services start correctly. 7d67938
- [x] Task: Manually verify the Homepage dashboard for appearance and connectivity. 7d67938
- [x] Task: Final audit of comments and structure for professional consistency. 7d67938
- [ ] Task: Conductor - User Manual Verification 'Verification & Cleanup' (Protocol in workflow.md)
