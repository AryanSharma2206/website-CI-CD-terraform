# 🚀 CI/CD Website Deployment using Terraform from Local Ubuntu Server

This project demonstrates the automation of website deployment using **Terraform** as Infrastructure as Code (IaC) and a **CI/CD pipeline** from a **local Ubuntu 24.04 machine** to an **AWS EC2 instance**. All configurations are done locally and executed by **Aryan Sharma**.

---

## 🛠️ Tech Stack

- **Ubuntu 24.04 LTS**
- **Terraform**
- **GitHub**
- **AWS EC2**
- **Apache2 Web Server**
- **PHP (Optional)**
- **GitHub Actions** (Optional for automation)

---

## 📁 Project Structure

```
terraform-cicd-deploy/
│
├── main.tf                  # Terraform configuration
├── variables.tf             # Input variables
├── outputs.tf               # Output values (e.g., public IP)
├── provider.tf              # AWS provider configuration
├── website/                 # Static or dynamic web content
│   └── index.html
├── .gitignore
├── README.md
```

---

## ⚙️ Setup and Deployment

### 1. Prerequisites

- Terraform installed (`sudo apt install terraform`)
- AWS CLI configured with your IAM credentials (`aws configure`)
- SSH key pair (`.pem`) generated and uploaded to AWS

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Plan the Infrastructure

```bash
terraform plan
```

### 4. Apply Configuration

```bash
terraform apply -auto-approve
```

### 5. Deploy Website Content

Once the EC2 instance is provisioned:

```bash
scp -i my-key.pem -r website/* ubuntu@<public-ip>:/var/www/html/
```

Or use a provisioner in `main.tf` to automate this.

---

## ✅ Features

- Fully automated provisioning of AWS infrastructure
- CI/CD-ready structure
- Portable and modular Terraform code
- Local control of cloud resources

---

## 👨‍💻 Author

**Aryan Sharma**  
B.Tech CSE (AI & DS) | Poornima University  
GitHub: [@AryanSharma2206](https://github.com/AryanSharma2206)  
LinkedIn: [linkedin.com/in/aryan-sharma2206](https://www.linkedin.com/in/aryan-sharma2206)  
Location: Jaipur, India
