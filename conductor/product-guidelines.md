# Product Guidelines - Homelab

## Technical Communication
- **Prose Style:** Use a **Concise & Technical** style for all documentation. Focus on speed and clarity, utilizing bullet points and short sentences to document configurations and procedures.
- **Documentation Structure:** Every service or major configuration must include a standardized `README.md` that clearly explains the setup, configuration, and usage.

## Technical Standards
- **Secrets Management:** Use environment variables (typically via `.env` files) for all sensitive information. Documentation should refer to these variables without exposing actual secrets.
- **Naming Conventions:** Adhere to **Default/Upstream** naming conventions for Docker services, containers, and Ansible tasks (e.g., `plex`, `prometheus`, `grafana`) to maintain consistency with official documentation and simplify troubleshooting.
- **Infrastructure as Code:** Prioritize automation through Ansible and Docker Compose, ensuring that configuration files are clean, readable, and follow community best practices.
