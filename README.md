# Project 14 – Deploy a Private Azure Linux VM (No Public IP)

This project provisions a secure, private Linux virtual machine in Azure using Terraform. The VM is deployed into a virtual network without any public IP assigned, making it accessible only from within the private network.

## 🔧 What This Deploys

- A new **Resource Group**
- A **Virtual Network** with 10.0.0.0/16 range
- A **Subnet** for the VM
- A **Network Interface** with only a private IP
- A **Linux Virtual Machine** (Ubuntu 18.04)
- SSH key authentication only (no passwords)

## ✅ Key Features

- **No public IP** — VM is not accessible from the public internet
- **SSH-only access** using public key
- **Best practices** for secure, private infrastructure

## 🔐 Output

```hcl
private_ip_address = "10.0.2.4"
```

## 📸 Screenshot

![Terraform Apply Output](./terraform-output.png)

## 🧠 Knowledge Check

1. Why is deploying without a public IP more secure?
2. How can you access this VM (e.g., Bastion, VPN)?
3. What Terraform resource assigns a private IP to a VM?
4. What does `disable_password_authentication = true` do?

## 🚀 Commands Used

```bash
terraform init
terraform apply -auto-approve
```

## 💡 Notes

- VM size: `Standard_B1ls` to stay within free-tier/core limits
- If core quota is exceeded, delete other VMs or request an increase

