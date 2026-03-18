# 🚀 AWS 3-Tier Highly Available Infrastructure using Terraform

## 📌 Project Overview

This project demonstrates a **production-ready AWS infrastructure** built using **Terraform (Infrastructure as Code)**.

The goal is to design a **secure, scalable, and highly available architecture** following real-world DevOps best practices.

---

## 🏗️ Architecture

```
Internet
   │
Application Load Balancer (Public Subnets)
   │
Auto Scaling Group (EC2 - Private Subnets)
   │
RDS Database (Private DB Subnets)
```

* Deployed across **2 Availability Zones**
* Ensures **High Availability & Fault Tolerance**

---

## ⚙️ AWS Services Used

### Networking

* VPC
* Public Subnets
* Private App Subnets
* Private DB Subnets
* Internet Gateway
* NAT Gateway
* Route Tables

### Compute

* EC2 Instances
* Launch Template
* Auto Scaling Group

### Load Balancing

* Application Load Balancer
* Target Groups
* Health Checks

### Database

* RDS (MySQL/PostgreSQL)
* Private access only

### Security

* Security Groups
* IAM Roles (optional)

### Terraform Backend

* S3 (Remote State Storage)
* DynamoDB (State Locking)

---

## 🔐 Security Design

* ALB is publicly accessible
* EC2 instances are in private subnets
* RDS is completely private
* Controlled access using Security Groups:

  * ALB → EC2
  * EC2 → RDS

---

## 🌐 High Availability

* Multi-AZ deployment:

  * AZ1 & AZ2 used
* Load balancer distributes traffic
* Auto Scaling replaces unhealthy instances

---

## 📁 Project Structure

```
aws-3tier-ha-infra-terraform/

modules/
  vpc/
  alb/
  ec2/
  rds/

env/
  dev/

backend.tf
provider.tf
main.tf
variables.tf
outputs.tf
```

---

## 🧠 Terraform Features Used

* Variables
* Locals
* Outputs
* Modules (modular architecture)
* Remote Backend (S3)
* State Locking (DynamoDB)

---

## 🚀 Deployment Steps

```bash
git clone <repo-url>
cd aws-3tier-ha-infra-terraform

terraform init
terraform plan
terraform apply
```

---

## 📊 Key Highlights

* Infrastructure as Code using Terraform
* Secure VPC architecture with subnet isolation
* Highly available system across multiple AZs
* Auto Scaling + Load Balancing
* Production-grade networking and security

---

## 🎯 Future Improvements

* Add CI/CD pipeline (GitHub Actions)
* Add monitoring (CloudWatch + Prometheus)
* Add HTTPS (ACM + ALB)
* Add WAF for security

---

## 👨‍💻 Author

Your Name
