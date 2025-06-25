## Overview

This project demonstrates the provisioning and configuration of a multi-cloud environment using **Infrastructure as Code (IaC)** tools—Terraform and Ansible—across both AWS and Azure. The setup deploys Ubuntu-based virtual machines in each cloud provider, then configures them automatically for a consistent and repeatable environment. This project is ideal for scenarios where organizations require high availability, redundancy, or wish to avoid vendor lock-in.

---

## Features

* **Automated Provisioning:** All cloud resources are defined and managed using Terraform modules for both AWS and Azure.
* **Consistent Configuration:** Ansible playbooks ensure that both AWS and Azure VMs are identically configured (Nginx installed and custom landing page).
* **Security Best Practices:** SSH key pairs are used for authentication; no sensitive keys or secrets are committed to source control.
* **Clean Codebase:** Clear separation of code for AWS, Azure, and Ansible with `.gitignore` protecting sensitive and generated files.

---

## Technologies Used

* **Terraform:** Infrastructure provisioning for AWS and Azure.
* **AWS:** EC2, VPC, Security Groups, Key Pairs.
* **Azure:** Resource Groups, Virtual Networks, Linux VMs, Network Security Groups.
* **Ansible:** Automated server configuration and provisioning.
* **Ubuntu:** Base OS for all provisioned virtual machines.

---


## How It Works

1. **Provision AWS Resources:**

   * Use Terraform to deploy a secured Ubuntu EC2 instance with SSH access.
2. **Provision Azure Resources:**

   * Use Terraform to create a Linux VM within a secure VNet in Azure.
3. **Configure Both Servers:**

   * Ansible connects to both VMs and installs Nginx with a custom landing page.
4. **Access the Result:**

   * Visit the public IPs of both VMs to confirm identical, automated configuration.

---

## Getting Started

### Prerequisites

* [Terraform](https://www.terraform.io/downloads.html)
* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* AWS & Azure CLI installed and authenticated.
* Valid SSH key pairs for both cloud providers.

### Deployment Steps

**1. Clone the Repository:**
**2. Setup AWS Infrastructure:**
**3. Setup Azure Infrastructure:**
**4. Configure VMs with Ansible:**
**5. Verify in Browser:**
**6. Clean Up:**

## Security & Best Practices

* **Never commit private keys or `terraform.tfvars` with secrets.**
* Use the included `.gitignore` to protect sensitive files.
* Ensure proper security group/firewall rules for SSH and HTTP/HTTPS access.

---

## Author

**Ansuman Nayak**
[GitHub Profile](https://github.com/ansumannayak-2k)

---

## Notes

* This project is for educational and demonstration purposes.
* Be sure to destroy resources after use to avoid unnecessary cloud charges.
* Feel free to fork or contribute with improvements.
