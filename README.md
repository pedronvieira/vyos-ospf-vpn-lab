*Read this in [Portuguese](README-pt.md)*

# Enterprise Network Simulation: VyOS, OSPF, GRE/IPsec & VRRP

This repository contains the documentation, configurations, and automation scripts for my Final Project in the Local Area Network Installation module (UFCD 5104), developed during the Network and IT Systems Management (CET) program at IEFP Alcântara, Lisbon.

## 📌 Network Topology
![OSPF and VPN Network Schema](img/topologia.png)

## 🎯 Objectives and Applied Technologies
The project consisted of designing and simulating a complex enterprise network in VirtualBox, ensuring high availability, dynamic routing, and secure communications between different sites. The following technologies were implemented:

* **Dynamic Routing (Multi-Area OSPF):** Distributed OSPF configuration across Areas 0, 1, and 2.
* **Security & Tunnels (GRE over IPsec):** Site-to-Site VPN implementation for secure interconnectivity between branches.
* **High Availability (VRRP):** Gateway redundancy to ensure automatic failover in case a core router goes offline.
* **Edge Services (NAT):** IP masquerading on the Central Router for outbound internet access.
* **Operating Systems:** VyOS (Virtual Routers), Debian, and AlmaLinux (End servers).

## 📂 Repository Structure
* `/configs/` - Full `.conf` text extractions for all 7 VyOS Routers.
* `/docs/` - Comprehensive technical report including connectivity and failover tests (Ping, SSH, VRRP state drops).
* `/img/` - Network schema and topology diagram.
* `/scripts/` - Batch automation scripts (`.bat`) to start and save the state of all VMs simultaneously in VirtualBox.

## 🚀 How to Run / Replicate
1. Import the VyOS and Linux VMs into Oracle VirtualBox.
2. Ensure the VM names match exactly the variables defined in the `/scripts/` folder.
3. Run `StartVMs.bat` to boot all machines with a built-in delay, preventing CPU overhead.