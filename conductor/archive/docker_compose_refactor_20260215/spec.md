# Specification - Docker Compose & Homepage Refactor

## Overview
This track focuses on professionalizing the core infrastructure configuration. We will refactor the `docker-compose.yml` for better readability and maintainability, translate all documentation to English, and synchronize the Homepage dashboard with the service list.

## Functional Requirements
- **Docker Compose Cleanup:**
    - Translate all Czech comments and notes to English.
    - Remove redundant or "teaching" notes, retaining only critical configuration details.
    - Reorder services: Group by category (Monitoring, Media, Utilities), alphabetical within groups, with Minecraft and AdGuard Home at the end.
- **Homepage Synchronization:**
    - Add all services to the Homepage dashboard, excluding AdGuard, ctop, and Minecraft.
    - Organize the Homepage layout to match the categories defined in `docker-compose.yml`.
- **General Professionalization:**
    - Ensure consistent naming conventions for containers and volumes.
    - Verify all services use appropriate environment variables for sensitive or variable data.

## Non-Functional Requirements
- **Readability:** The YAML structure should be clean, using consistent indentation and logical spacing.
- **Maintainability:** Comments should explain *why* a configuration exists if it's not standard.

## Acceptance Criteria
- `docker-compose.yml` contains zero Czech text.
- Services in `docker-compose.yml` follow the agreed-upon order.
- Homepage dashboard displays all relevant services grouped by category.
- The system remains fully functional after the refactor (no broken links or failed service starts).

## Out of Scope
- Adding new functional services (except for dashboard entries).
- Modifying the underlying Ansible automation (unless required by path changes).
- Changing hardware-specific configurations (GPU drivers, etc.).
