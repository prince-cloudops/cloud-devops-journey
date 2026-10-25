## Day 1: Workstation Setup
- Environment: Lenovo IdeaPad i7 13th Gen
- Platform: Ubuntu 24.04 on WSL2
- Git & VS Code integrated successfully.

## Day 1 Setup
- Laptop: IdeaPad i7 13th Gen
- OS: Ubuntu 24.04 on WSL2
- Status: Workstation configured successfully

### Day 2 Extension: Custom Bridge & Service Discovery
- Created user-defined bridge network (`devops-net`)
- Verified embedded DNS daemon (`127.0.0.11`) name resolution
- Tested Layer 3 container-to-container routing via hostname

## Day 3: Advanced Netfilter & Docker Firewalling
- Deep dive into PREROUTING and DNAT port mapping
- Analyzed FORWARD dispatching and nested DOCKER filtering chains
- Implemented custom firewall rules inside DOCKER-USER chain
- Resolved port binding conflicts (0.0.0.0:8080)

## Day 4: Multi-Container Orchestration (Docker Compose)
- Created multi-tier microservice architecture (Python Flask + Redis)
- Orchestrated service discovery and isolated network bridging via YAML
- Enforced zero-exposure database security (internal bridge only)

## Day 5: Layer 7 Reverse Proxy & Load Balancing
- Implemented Nginx reverse proxy with round-robin upstream routing
- Configured X-Forwarded-For client IP propagation
- Orchestrated multi-replica backend microservices behind a unified ingress gateway

## Day 6: Infrastructure Observability (Prometheus & cAdvisor)
- Deployed Prometheus TSDB and Google cAdvisor v0.49 on WSL2
- Mounted host cgroups v2 and Docker daemon socket for systemd metrics
- Resolved WSL2 metric labeling (system.slice vs container scopes)
- Calculated live CPU rates and process memory consumption (~124 MB) via PromQL
