# Secure-multi-region-azure-environment
 secure, multi-region Azure environment for a global company, covering identity governance, networking, and data protection
 
Project scenerio : This project simulates a secure Azure environment for a global company operating across multiple regions. The company needs centralized identity management with role-based access for employees, managers, and executives, secure networking between regional offices, and compliance with data protection regulations such as GDPR, which requires certain data to stay within specific geographic regions.

What I built :
- Created three EntraID Security groups (Employees-Global, Managers-Global, Executives-Global) to represent company access tiers.
- Created two resource groups across regions (rg-global-company-uk in UK South, rg-global-company-india in Central India) to simulate a multinational company footprint.
- Configured RBAC role assignments on both resource groups — Reader for employees, Contributor for managers, Owner for executives — mirroring real-world tiered access control.
- Documented IAM configuration with screenshots for both regions (see docs/screenshots/)
- Created isolated virtual networks per region (vnet-uk in UK South, vnet_india in Central India) with dedicated subnets, laying the network foundation for regional offices.
- Deployed a virtual machine (vm-uk-employee001) and secured remote access by restricting the RDP inbound rule to a single trusted IP address instead of leaving it open to the internet.
- Enforced governance with Azure Policy, requiring a `Department` tag on resources across both regional resource groups, including correcting an over-broad subscription-level scope to the proper resource group level.
