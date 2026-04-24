\# IoT Data Hub Project (AWS EC2 Deployment)



\## Overview

This project is a simulated IoT Data Hub built on AWS EC2 infrastructure.  

It demonstrates automated deployment of a web server and database setup, along with security hardening, testing, and monitoring of system performance.



The system simulates sensor data ingestion, stores results, and provides a basic web interface for status monitoring.



\---



\## System Architecture



\- \*\*Web Server (Apache on Ubuntu EC2)\*\*  

&#x20; Hosts the application and receives HTTP requests.



\- \*\*Database Server (MySQL / SQL-based setup)\*\*  

&#x20; Stores simulated sensor data and test records.



\- \*\*Attack / Test Environment\*\*  

&#x20; Used for penetration testing (nmap, nikto, hydra) and load testing.



\---



\## Features



\- Automated server setup using Bash scripts  

\- Apache web server deployment  

\- Security hardening (SSH and Apache configuration)  

\- Load testing simulation  

\- Penetration testing (Nmap, Nikto, Hydra)  

\- Structured logging and test output  

\- Basic IoT-style data simulation workflow  



\---



\## Files Included



\### Source Code / Scripts

\- setup\_web.sh → Installs and configures Apache web server  

\- setup\_db.sh → Sets up database environment  

\- load\_test\_results.txt → Output from load testing simulation  



\### Reports

\- PenTest\_report.md → Security testing results and findings  

\- Audit\_Report.md → Compliance and system audit report  



\### Documentation / Diagrams

Located in `/docs`:

\- Network\_Topology.png  

\- ER\_Diagram.png  

\- Gantt\_Chart\_Final.pdf  



\---



\## How to Deploy



\### 1. Update system

```bash

sudo apt update -y

2\. Run Web Server Setup

bash setup\_web.sh

3\. Run Database Setup

bash setup\_db.sh

How to Verify Deployment



Open browser:



http://<EC2-PUBLIC-IP>



Expected result:



Apache web page loads successfully

Testing



Load test results:



load\_test\_results.txt



Security tools used:



Nmap → network scanning

Nikto → web vulnerability scanning

Hydra → SSH brute-force testing

Security Features

SSH root login disabled

Password authentication disabled

Apache server headers hardened (ServerTokens, ServerSignature)

AWS Security Groups restrict access to required ports only

Notes

System deployed on AWS EC2 Ubuntu instances

All instances were terminated after testing (secure decommissioning)

No sensitive credentials are stored in this repository

This project follows basic cloud security and deployment practicesps restrict access to required ports only


