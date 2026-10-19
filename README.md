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
