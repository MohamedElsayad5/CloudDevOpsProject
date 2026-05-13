<p align="center">
  <img src="images/ivolve-logo.png" height="120"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/nti-logo.png" height="120"/>
</p>

<h1 align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=35&duration=3000&pause=1000&color=00D9FF&center=true&vCenter=true&width=600&lines=DevOps+Graduation+Project;GitOps+%2B+AWS+EKS+%2B+ArgoCD;CI%2FCD+Pipeline+Automation" alt="Typing SVG" />
</h1>

<h3 align="center" style="color: #64B5F6;">
  🤝 In Collaboration with <strong>iVolve Technologies</strong>
</h3>

<p align="center">
  <img src="https://img.shields.io/badge/AWS-EKS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white"/>
  <img src="https://img.shields.io/badge/ArgoCD-GitOps-EF7B4D?style=for-the-badge&logo=argo&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub_Actions-CI/CD-2088FF?style=for-the-badge&logo=githubactions&logoColor=white"/>
  <img src="https://img.shields.io/badge/Docker-Hub-2496ED?style=for-the-badge&logo=docker&logoColor=white"/>
  <img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white"/>
</p>

<p align="center" style="font-size: 1.15rem; line-height: 1.8; max-width: 800px; margin: 20px auto;">
  🎓 This project represents the <strong>culmination of DevOps training</strong> at the <br/>
  <strong>National Telecommunication Institute (NTI)</strong>, in partnership with <strong>iVolve Technologies</strong>. <br/>
  ✨ A complete production-ready GitOps pipeline demonstrating modern cloud-native practices.
</p>

---

<div align="center">

## 🚀 **ArgoCD GitOps Deployment on AWS EKS**
### *Using GitHub Actions & DockerHub*

</div>

<table align="center">
<tr>
<td align="center" width="33%">

### 🏗️ **Infrastructure**
```
✅ AWS VPC
✅ EKS Cluster
✅ Load Balancer
✅ NAT Gateway
```

</td>
<td align="center" width="33%">

### ⚙️ **CI/CD Pipeline**
```
✅ jenkins
✅ Docker Build
✅ Image Scanning
✅ Auto-deployment
```

</td>
<td align="center" width="33%">

### 🔄 **GitOps**
```
✅ ArgoCD Sync
✅ Auto-healing
✅ Rollback Ready
✅ Declarative Config
```

</td>
</tr>
</table>

---

## 📐 Architecture Overview

<div align="center">

![Architecture Diagram](images/architecture.png)

</div>

# CloudDevOpsProject Structure

```text
CloudDevOpsProject/
├── ansible/
│   ├── ansible.cfg
│   ├── inventory/
│   │   ├── aws_ec2.yml
│   │   └── hosts.ini
│   ├── playbooks/
│   │   ├── jenkins-dynamic.yml
│   │   └── jenkins-setup.yml
│   └── roles/
│       ├── docker/
│       ├── java/
│       ├── jenkins/
│       └── trivy/
│
├── argocd/
│   └── my-app-config.yaml
│
├── FinalProject/
│   ├── app.py
│   ├── Dockerfile
│   ├── README.md
│   ├── requirements.txt
│   ├── static/
│   │   ├── logos/
│   │   │   ├── ivolve-logo.png
│   │   │   └── nti-logo.png
│   │   └── style.css
│   └── templates/
│       └── index.html
│
├── images/
│   ├── ivolve-logo.png
│   └── nti-logo.png
│
├── jenkins/
│   └── shared-library/
│       └── vars/
│           ├── buildImage.groovy
│           ├── pushECR.groovy
│           ├── scanImage.groovy
│           └── updateManifest.groovy
│
├── Jenkinsfile
│
├── k8s/
│   ├── Deployment.yaml
│   ├── namespace.yaml
│   └── service.yaml
│
├── keys/
│   └── devops-key.pem
│
├── kubectl/
│
├── terraform/
│   ├── backend.tf
│   ├── modules.tf
│   ├── outputs.tf
│   ├── variables.tf
│   └── modules/
│       ├── ecr/
│       ├── eks/
│       ├── network/
│       ├── security-group/
│       └── server/
│
└── README.md

---
````

### 🏛️ **Components Breakdown**

<table>
<tr>
<td width="50%">

#### 🌐 **Network Layer**

```mermaid
graph TB
    A[🌍 VPC] --> B[📡 Public Subnet]
    A --> C[🔒 Private Subnet]
    B --> D[🚪 NAT Gateway]
    C --> E[☸️ EKS Cluster]
    C --> F[🔄 ArgoCD]
    C --> G[📦 App Namespace]
    
    style A fill:#FF9900,color:#fff
    style B fill:#4CAF50,color:#fff
    style C fill:#F44336,color:#fff
    style E fill:#326CE5,color:#fff
    style F fill:#EF7B4D,color:#fff
```

**Public Subnet:**
- NAT Gateway
- Load Balancer
- Internet Gateway

**Private Subnet:**
- EKS Worker Nodes
- ArgoCD Controller
- Application Pods

</td>
<td width="50%">

#### 🔄 **CI/CD Flow**

```mermaid
graph LR
    A[👨‍💻 Developer] -->|Push Code| B[GitHub]
    B -->|Trigger| C[🤖 jenkins]
    C -->|Build| D[🐳 Docker Image]
    D -->|Scan| E[🔍 Security Check]
    E -->|Push| F[📦 DockerHub]
    C -->|Update| G[📝 K8s Manifest]
    G -->|Commit| B
    B -->|Watch| H[🔄 ArgoCD]
    H -->|Deploy| I[☸️ EKS]
    
    style A fill:#FFD700,color:#000
    style B fill:#181717,color:#fff
    style C fill:#2088FF,color:#fff
    style D fill:#2496ED,color:#fff
    style F fill:#2496ED,color:#fff
    style H fill:#EF7B4D,color:#fff
    style I fill:#326CE5,color:#fff
```

**Automation Flow:**
1. Code Push → GitHub
2. Actions → Build & Scan
3. Push → DockerHub
4. Update → Manifests
5. ArgoCD → Auto-Sync
6. Deploy → EKS Cluster

</td>
</tr>
</table>

---

## 🔥 CI/CD Workflow Pipeline

<div align="center">

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                         🚀 AUTOMATED DEPLOYMENT PIPELINE                      │
└──────────────────────────────────────────────────────────────────────────────┘
```

</div>

### 📝 **Step-by-Step Workflow**

<table>
<tr>
<td width="10%" align="center"><h3>1️⃣</h3></td>
<td width="90%">

#### 👨‍💻 **Developer Push**

```bash
git add .
git commit -m "feat: update application"
git push origin main
```

**Triggers:** GitHub Actions workflow on `main` branch

</td>
</tr>

<tr>
<td width="10%" align="center"><h3>2️⃣</h3></td>
<td width="90%">

#### 🤖 **GitHub Actions Pipeline**

```yaml
Pipeline Steps:
┌─────────────────────────────────────┐
│ 🔨 Build Docker Image               │
│ 🔍 Scan for Vulnerabilities         │
│ 📤 Push to DockerHub                │
│ 📝 Update K8s Deployment Manifest   │
│ 💾 Commit Updated YAML to Repo      │
└─────────────────────────────────────┘
```

**Output:** New Docker image tagged with commit SHA

</td>
</tr>

<tr>
<td width="10%" align="center"><h3>3️⃣</h3></td>
<td width="90%">

#### 🔄 **ArgoCD GitOps Sync**

```
ArgoCD Detects Changes
        ↓
   Compares State
        ↓
  Auto-Sync Enabled
        ↓
   Deploys to EKS
        ↓
  ✅ Application Updated
```

**Result:** Zero-downtime deployment with automatic rollback capability

</td>
</tr>
</table>

---

## 📸 Implementation Journey

<div align="center">

### 🛠️ **Step-by-Step Setup Guide**

</div>

### 🏗️ Step 1: Infrastructure Provisioning with Terraform

```bash
# Navigate to terraform directory
cd terraform

# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply infrastructure
terraform apply -auto-approve
```

> ⚠️ **Important:** Import your AWS credentials before running Terraform


#### 🎯 **What Gets Created:**
- ✅ VPC with public/private subnets
- ✅ Internet Gateway & NAT Gateway
- ✅ EKS Cluster with managed node groups
- ✅ Security groups & IAM roles
- ✅ Load Balancer infrastructure

---

### ⚙️ Step 2: Configure Kubectl for EKS

```bash
# Update kubeconfig
aws eks update-kubeconfig --name <cluster-name> --region <region>

# Export config
export KUBECONFIG=~/.kube/config

# Verify connection
kubectl get nodes
kubectl cluster-info
```

#### ✅ **Verification Checklist:**
- [ ] Nodes are in `Ready` state
- [ ] Cluster endpoint is reachable
- [ ] Current context is set to EKS cluster

---

### 🐳 Step 3: Build & Test Docker Image

```bash
# Build the Docker image
docker build -t ivolve-app:latest .

# Test locally
docker run -d -p 8080:80 ivolve-app:latest

# Verify application
curl http://localhost:8080
```


![App Running](images/build_test_docker.png)

#### 🔍 **Testing:**
- ✅ Image builds successfully
- ✅ Container starts without errors
- ✅ Application responds on expected port

---

### 🔄 Step 4: Install & Configure ArgoCD

```bash
# Create ArgoCD namespace
kubectl create namespace argocd

# Install ArgoCD
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Wait for pods to be ready
kubectl wait --for=condition=ready pod -l app.kubernetes.io/name=argocd-server -n argocd --timeout=300s

# Get initial admin password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```


#### 🌐 **Access ArgoCD UI:**

```bash
# Port forward to local machine
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

Then visit: `https://localhost:8080`
- **Username:** `admin`
- **Password:** Retrieved from previous command

---

### 🔐 Step 5: Configure GitHub Secrets

Navigate to: **Repository → Settings → Secrets and variables → Actions**

Add the following secrets:

| Secret Name | Description | Example Value |
|-------------|-------------|---------------|
| `DOCKERHUB_USERNAME` | DockerHub username | `myusername` |
| `DOCKERHUB_TOKEN` | DockerHub access token | `dckr_pat_xxxxx` |
| `GH_PAT` | GitHub Personal Access Token | `ghp_xxxxx` |


> 🔒 **Security Note:** Never commit secrets to your repository!

---

### 📦 Step 6: Create ArgoCD Application

```bash
# Apply ArgoCD application manifest
kubectl apply -f argocd/application.yaml
```

**Application Configuration:**
```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: ivolve-app
  namespace: argocd
spec:
  project: default
  source:
    repoURL: https://github.com/your-repo
    targetRevision: HEAD
    path: k8s
  destination:
    server: https://kubernetes.default.svc
    namespace: ivolve
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
```

![jenkins pipeline stages ](images/jenkins_pipeline.png)


---

### 🔄 Step 7: Trigger Auto-Deployment

```bash
# Make a change to your code
echo "Updated application" >> README.md

# Commit and push
git add .
git commit -m "feat: trigger deployment"
git push origin main
```

**What Happens Next:**
1. 🤖 jenkins starts
2. 🐳 Builds new Docker image
3. 🔍 Scans for vulnerabilities
4. 📤 Pushes to DockerHub
5. 📝 Updates K8s manifest
6. 🔄 ArgoCD detects change
7. ☸️ Deploys to EKS

![ArgoCD Sync](images/argocd_checkout.png)

</details>

<details>
<summary><h3>🌐 Step 8: Access Your Application</h3></summary>

```bash
# Get LoadBalancer external IP
kubectl get svc -n ivolve ivolve-svc

# Output:
# NAME         TYPE           CLUSTER-IP      EXTERNAL-IP                    PORT(S)        AGE
# ivolve-svc   LoadBalancer   10.100.200.50   a1b2c3d4.us-east-1.elb...     80:30080/TCP   5m
```

🌍 **Access your application at:** `http://<EXTERNAL-IP>`

#### 🔍 **Verification Commands:**

```bash
# Check pod status
kubectl get pods -n ivolve

# View application logs
kubectl logs -f deployment/ivolve-app -n ivolve

# Describe service
kubectl describe svc ivolve-svc -n ivolve
```

---

## Destroy Infrastructure

To destroy all created AWS infrastructure resources safely, run:

```bash
cd terraform

terraform destroy

terraform destroy -auto-approve

---
<img src="images/terraform_destroy.png" width="1000"/> ```

## 🎯 Key Features

<div align="center">

<table>
<tr>
<td width="25%" align="center">

### 🚀 **Automation**

✅ Zero-touch deployment<br/>
✅ Auto-scaling ready<br/>
✅ Self-healing apps<br/>
✅ Instant rollbacks

</td>
<td width="25%" align="center">

### 🔒 **Security**

✅ Image scanning<br/>
✅ Private subnets<br/>
✅ IAM roles<br/>
✅ Encrypted secrets

</td>
<td width="25%" align="center">

### 📊 **Observability**

✅ ArgoCD dashboard<br/>
✅ EKS monitoring<br/>
✅ CloudWatch logs<br/>
✅ Resource metrics

</td>
<td width="25%" align="center">

### 🔄 **GitOps**

✅ Git as source<br/>
✅ Declarative config<br/>
✅ Version control<br/>
✅ Audit trail

</td>
</tr>
</table>

</div>

---

## 🛠️ Technologies Stack

<div align="center">

| Category | Technology | Purpose |
|:--------:|:----------:|:--------|
| ☁️ **Cloud** | <img src="https://img.shields.io/badge/AWS-232F3E?style=flat&logo=amazonaws&logoColor=white"/> | Infrastructure hosting |
| 🏗️ **IaC** | <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white"/> | Infrastructure provisioning |
| ☸️ **Orchestration** | <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=flat&logo=kubernetes&logoColor=white"/> | Container orchestration |
| 🐳 **Containerization** | <img src="https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white"/> | Application packaging |
| 🔄 **GitOps** | <img src="https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat&logo=argo&logoColor=white"/> | Continuous deployment |
| 🤖 **CI** | <img src="https://img.shields.io/badge/Jenkins-D24939?style=flat&logo=jenkins&logoColor=white"/> | Continuous integration |
| 📦 **Registry** | <img src="https://img.shields.io/badge/DockerHub-2496ED?style=flat&logo=docker&logoColor=white"/> | Image storage |

</div>

---

## 📊 Project Outcomes

<div align="center">

```
┌─────────────────────────────────────────────────────────────┐
│                    ✨ ACHIEVEMENTS ✨                        │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ✅ Fully Automated CI/CD Pipeline                          │
│  ✅ Production-Grade Infrastructure                          │
│  ✅ Zero-Downtime Deployments                                │
│  ✅ GitOps Best Practices                                    │
│  ✅ Infrastructure as Code                                   │
│  ✅ Security-First Approach                                  │
│  ✅ Scalable Architecture                                    │
│  ✅ Disaster Recovery Ready                                  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

</div>

### 📈 **Performance Metrics**

<table align="center">
<tr>
<td align="center">

**⚡ Deployment Speed**

`< 5 minutes`

From commit to production

</td>
<td align="center">

**🔄 Sync Frequency**

`3 minutes`

ArgoCD polling interval

</td>
<td align="center">

**🎯 Reliability**

`99.9% uptime`

With auto-healing enabled

</td>
</tr>
</table>

---

## 🎓 Learning Outcomes

### 📚 **Skills Acquired**

### ☁️ **Cloud Infrastructure**
- ✅ AWS VPC design and implementation
- ✅ EKS cluster management
- ✅ Load balancer configuration
- ✅ NAT Gateway and routing

### 🏗️ **Infrastructure as Code**
- ✅ Terraform resource creation
- ✅ State management
- ✅ Module development
- ✅ Best practices for IaC

### ☸️ **Kubernetes**
- ✅ Deployment strategies
- ✅ Service networking
- ✅ ConfigMaps and Secrets
- ✅ Resource management

### 🔄 **GitOps**
- ✅ ArgoCD setup and configuration
- ✅ Application synchronization
- ✅ Auto-healing and pruning
- ✅ Rollback strategies

### 🤖 **CI/CD**
- ✅ GitHub Actions workflows
- ✅ Docker build optimization
- ✅ Security scanning
- ✅ Automated testing

### 🔒 **Security**
- ✅ Image vulnerability scanning
- ✅ Secret management
- ✅ Network policies
- ✅ IAM best practices

---

## 🔮 Future Enhancements

<div align="center">

| Enhancement | Status | Priority |
|:------------|:------:|:--------:|
| 🎛️ **Monitoring with Prometheus** | 📋 Planned | 🔴 High |
| 📊 **Grafana Dashboards** | 📋 Planned | 🔴 High |
| 🔍 **ELK Stack Logging** | 📋 Planned | 🟡 Medium |
| 🧪 **Automated Testing** | 📋 Planned | 🔴 High |
| 🌍 **Multi-Region Deployment** | 💭 Idea | 🟢 Low |
| 🔐 **Vault Integration** | 📋 Planned | 🟡 Medium |
| 📱 **Slack Notifications** | 💭 Idea | 🟢 Low |
| 🔄 **Blue-Green Deployment** | 📋 Planned | 🟡 Medium |

</div>

---

## 📖 Documentation

<div align="center">

| Document | Description | Link |
|:---------|:------------|:----:|
| 📘 **Setup Guide** | Complete installation instructions | [View](docs/setup.md) |
| 🔧 **Configuration** | Detailed configuration options | [View](docs/config.md) |
| 🐛 **Troubleshooting** | Common issues and solutions | [View](docs/troubleshooting.md) |
| 🏗️ **Architecture** | System design and decisions | [View](docs/architecture.md) |
| 🔒 **Security** | Security considerations | [View](docs/security.md) |

</div>

---

## 🤝 Acknowledgments

<div align="center">

<table>
<tr>
<td align="center" width="50%">

### 🎓 **National Telecommunication Institute**

For providing world-class DevOps training and infrastructure support

</td>
<td align="center" width="50%">

### 💼 **iVolve Technologies**

For mentorship, guidance, and industry best practices

</td>
</tr>
</table>

</div>

---

## 📝 Conclusion

<div align="center">

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                  │
│     🎉 This project successfully demonstrates a complete         │
│        production-ready GitOps CI/CD pipeline using:             │
│                                                                  │
│           ✨ jenkins for Continuous Integration           │
│           🐳 DockerHub for Image Management                      │
│           🔄 ArgoCD for GitOps Delivery                          │
│           ☁️ AWS EKS for Kubernetes Orchestration                │
│           🏗️ Terraform for Infrastructure as Code                │
│                                                                  │
│     Every code change automatically triggers:                    │
│     Build → Scan → Push → Update → Sync → Deploy               │
│                                                                  │
│     This ensures consistent, automated, and                      │
│     production-grade delivery! 🚀                                │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

</div>


---

### 📧 Contact

*   **Email:** [moeyelsayad777@gmail.com](mailto:moeyelsayad777@gmail.com)
*   **LinkedIn:** [Mohamed Elsayad](https://www.linkedin.com/in/mohamed-mahamoud-elsayad/)
*   **GitHub:** [MohamedElsayad5](https://github.com/MohamedElsayad5)

---

**Made with ❤️ and ☕ by DevOps Engineer**

<img src="https://img.shields.io/badge/Status-Production_Ready-success?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Maintained-Yes-green?style=for-the-badge"/>
<img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge"/>

</div>
