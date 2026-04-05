# 🚀 AWS DevOps Project: Flask App Deployment with Terraform, Docker & CI/CD

> "End-to-end production-style deployment on AWS using Terraform, Docker, ECR, and GitHub Actions"

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 👨‍💻 About This Project

This project demonstrates my ability to design and implement a "real-world DevOps pipeline" on AWS.

It simulates a production scenario where:

⇒ Infrastructure is provisioned using "Terraform"  
⇒ Application is containerized using "Docker"  
⇒ CI/CD pipeline is built using "GitHub Actions"  
⇒ Deployment is automated to "Amazon EC2 via ECR"

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🏗️ Architecture Overview

```id="arch1"
GitHub Push → GitHub Actions → Build Docker Image → Push to Amazon ECR → Deploy to EC2
                                     ↓
                              Terraform (Infra Setup)
```
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🧰 Tech Stack

⇒ "AWS": EC2, ECR, VPC, IAM, S3 (planned), DynamoDB (planned)  
⇒ "Infrastructure as Code": Terraform  
⇒ "CI/CD": GitHub Actions  
⇒ "Containerization": Docker  
⇒ "Backend": Python Flask  
⇒ "Server": Gunicorn

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🔥 Key Highlights (What I Delivered)

✅ Designed and provisioned AWS infrastructure using Terraform  
✅ Built a complete CI/CD pipeline from scratch using GitHub Actions  
✅ Dockerized Flask application with production-ready setup (Gunicorn)  
✅ Implemented SHA-based image tagging for version control  
✅ Automated deployment to EC2 using SSH and Docker  
✅ Debugged real-world issues (Docker build context, pipeline failures, deployment errors)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## ⚙️ CI/CD Workflow

### 🔹 Build Pipeline

⇒ Trigger: Push to `main`  
⇒ Build Docker image  
⇒ Tag using Git commit SHA  
⇒ Push to Amazon ECR

### 🔹 Deployment Pipeline

⇒ SSH into EC2 instance  
⇒ Pull latest image from ECR  
⇒ Stop old container  
⇒ Run updated container

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 📁 Project Structure
```id="struct1"
.  
├── terraform/              # Infrastructure code  
├── app/              # Flask application  
│   ├── app.py  
│   ├── Dockerfile  
│   └── requirements.txt  
├── .github/workflows/     # CI/CD pipelines  
```
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🧠 Challenges & Learnings
⇒ Fixed Docker build context issues (`requirements.txt not found`)  
⇒ Understood GitHub Actions workflow structure and debugging  
⇒ Solved image consistency issues using Git SHA tagging  
⇒ Learned real-world troubleshooting in AWS deployments  

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 📈 Future Enhancements
[ ] Remote backend for Terraform (S3 + DynamoDB)  
[ ] Modulerize the terraform configuration  
[ ] Terraform CI/CD pipeline  
[ ] Load Balancer + HTTPS (SSL)  
[ ] Auto Scaling Group  
[ ] CloudWatch monitoring & alerts

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 💼 Why This Project Matters
This project demonstrates:
⇒ Practical AWS + DevOps skills  
⇒ Ability to build CI/CD pipelines independently  
⇒ Strong debugging and problem-solving mindset  
⇒ Understanding of production deployment patterns

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 📬 Let’s Connect
I’m actively looking for opportunities in:

⇒ "Cloud Engineering"  
⇒ "DevOps Engineering"  
⇒ "AWS-based roles"

Feel free to connect or reach out!

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

⭐ If you found this project useful, feel free to star the repo!
