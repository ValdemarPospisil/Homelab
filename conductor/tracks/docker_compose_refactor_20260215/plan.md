# Implementation Plan - Docker Compose & Homepage Refactor

This plan outlines the steps to refactor the `docker-compose.yml` file for professionalization and to synchronize the Homepage dashboard with the existing services.

## Phase 1: Preparation & Analysis
- [ ] Task: Audit existing `docker-compose.yml` for Czech comments and redundant notes.
- [ ] Task: Categorize all services into groups (Media, Monitoring, Utilities, etc.) to define the new order.
- [ ] Task: Audit `homepage/config/services.yaml` to identify missing entries.
- [ ] Task: Conductor - User Manual Verification 'Preparation & Analysis' (Protocol in workflow.md)

## Phase 2: Docker Compose Refactoring
- [ ] Task: Translate all Czech comments to English in `docker-compose.yml`.
- [ ] Task: Remove redundant notes and "AI Slop" from `docker-compose.yml`.
- [ ] Task: Reorganize `docker-compose.yml` services into categorical groups (alphabetical within groups).
- [ ] Task: Move `minecraft` and `adguard` services to the end of the file.
- [ ] Task: Verify YAML syntax validity using `docker-compose config`.
- [ ] Task: Conductor - User Manual Verification 'Docker Compose Refactoring' (Protocol in workflow.md)

## Phase 3: Homepage Dashboard Synchronization
- [ ] Task: Group `homepage/config/services.yaml` entries into the same categories as the Docker Compose file.
- [ ] Task: Add missing services to `homepage/config/services.yaml` (excluding AdGuard, ctop, and Minecraft).
- [ ] Task: Ensure all homepage widgets and icons are correctly configured for the new entries.
- [ ] Task: Conductor - User Manual Verification 'Homepage Dashboard Synchronization' (Protocol in workflow.md)

## Phase 4: Verification & Cleanup
- [ ] Task: Run `deploy.sh` to apply changes and ensure all services start correctly.
- [ ] Task: Manually verify the Homepage dashboard for appearance and connectivity.
- [ ] Task: Final audit of comments and structure for professional consistency.
- [ ] Task: Conductor - User Manual Verification 'Verification & Cleanup' (Protocol in workflow.md)
