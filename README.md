# 🌍 DevOps HTML Deployment Pipeline  

**Technologies:** Terraform • AWS EC2 • Nginx • Docker • GitHub Actions  

---

## 🔧 Overview  

This project demonstrates a fully automated **DevOps pipeline** that deploys a **static HTML application** to an **AWS EC2 instance** using Terraform, Docker, and GitHub Actions.  

The architecture was designed so that **any change** to the `index.html` file automatically triggers a **CI/CD workflow** which rebuilds and redeploys the application directly to the EC2 server — completely hands-free.  

---

## 🚀 Key Features  

- **Automated AWS EC2 provisioning** using Terraform (`main.tf`)  
- **Nginx web server** configured to serve the static HTML app  
- **Docker containerization**, image published on Docker Hub  
- **Automatic deployment** via GitHub Actions — no manual steps  
- **Bash script (`deploy.sh`)** for quick local testing or manual updates  
- **systemd service** ensuring the container auto-starts on server boot  

---

## ⚙️ Technologies & Tools  

| Component | Purpose |
|------------|----------|
| **Terraform** | Infrastructure as Code – creates and configures the EC2 instance |
| **AWS EC2** | Hosts the web application |
| **Nginx** | HTTP server serving the HTML content |
| **Docker** | Packages the app into a portable container |
| **GitHub Actions** | CI/CD automation triggered on each git push |
| **Bash Scripts** | Simplifies deployment and maintenance tasks |

---

## 🧩 Project Structure  



.github/workflows/
├── terraform.yml # Runs Terraform automatically on push
├── deploy.yml # Handles the automatic deployment to EC2
deploy.sh # Local deployment script
Dockerfile # Builds the container image
index.html # Static web page
main.tf # Terraform configuration
README.md # Project documentation


---

## 📦 Automated Deployment (GitHub Actions)  

On each push to the **main** branch, the pipeline automatically:  
1. Pulls the latest source code  
2. Builds a new Docker image  
3. Copies the HTML file to the EC2 instance  
4. Restarts the Nginx service  
5. Confirms successful deployment  

---

## 🖥️ Test Locally  

```bash
docker build -t devops-html-app .
docker run -d -p 8080:80 devops-html-app


Then open 👉 http://localhost:8080
 in your browser.

💼 Professional Relevance

This project learned me:

☁️ Cloud provisioning (AWS EC2)

⚙️ CI/CD pipeline automation (GitHub Actions)

🌐 Server configuration (Nginx)

🐳 Containerization (Docker)

💻 Automation scripting (Bash)

🧱 Infrastructure as Code (Terraform)
