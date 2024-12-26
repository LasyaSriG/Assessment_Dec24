# <PROJECT-NAME>

This repository contains the solutions for the assessment tasks related to GCP, Terraform, Kubernetes, and Docker. Each task is completed with detailed implementations and uploaded files. Below is the description and usage guide for each task.

## Repository Structure



├── First_Task/               # GCP buckets, roles, and lifecycle management
├── Second_Task/               # Terraform code for GCP infrastructure
├── Third_Task/               # Workflow for Google App Engine serverless deployment
├── Fourth_Task/               # Docker setup for Java application
├── Fifth_Task/               # Kubernetes installation steps
├── README.md             # Project documentation


## Task 1: GCP - Buckets, Roles, Versioning, and Lifecycle Management

### Description
This task demonstrates how to:
- Create GCP buckets
- Upload files
- Assign roles and permissions to users/groups
- Enable versioning and lifecycle policies
- Set up retention policies
  
  Refer to the First_Task file for the commands

## Task 2: Terraform Code for GCP Infrastructure

### Description
This task contains Terraform scripts to:
- Create two VMs
- Set up an Elastic/Application Load Balancer
- Deploy a "Hello World" application
- Configure auto-scaling and fault tolerance

### Files Included


### How to Use
1. Initialize Terraform:
   
   terraform init
   
2. View the Terraform plan:
   
   terraform plan
   
4. Apply the configuration:
 
   terraform apply
  
6. Verify the Load Balancer:
   - Access the DNS provided in the Terraform output.



# Task 3: Workflow for Google App Engine Deployment

### Description
This task includes the workflow for deploying and managing a serverless application using Google App Engine.

### Steps
1. Create an App Engine application:
   ```bash
   gcloud app create --region=<REGION>
   ```
2. Deploy the application:
   ```bash
   gcloud app deploy app.yaml
   ```
3. Access the application:
   ```bash
   gcloud app browse
   ```
4. Monitor and manage the app using the GCP Console.

---

## Task 4: Docker Setup for Java Application

### Description
This task includes a `Dockerfile` to set up a Java application on an Ubuntu image with Tomcat and WAR file deployment.

### Files Included
- `Dockerfile`: Contains the configuration for building the Docker image.
- `app.war`: Sample WAR file for deployment.

### Docker Commands
1. Build the Docker image:
   ```bash
   docker build -t java-app .
   ```
2. Run the container:
   ```bash
   docker run -d -p 8080:8080 java-app
   ```
3. List running containers:
   ```bash
   docker ps
   ```
4. Stop and delete a container:
   ```bash
   docker stop <CONTAINER-ID>
   docker rm <CONTAINER-ID>
   ```
5. Create a volume and mount it:
   ```bash
   docker volume create app-volume
   docker run -d -v app-volume:/app -p 8080:8080 java-app
   ```
6. Push the image to Docker Hub:
   ```bash
   docker tag java-app <DOCKER-HUB-USERNAME>/java-app
   docker push <DOCKER-HUB-USERNAME>/java-app
   ```

---

## Task 5: Kubernetes Installation Steps

### Description
This task outlines the steps to install Kubernetes and includes a demonstration.

### Installation Steps
1. Install `kubectl`, `kubeadm`, and `kubelet`:
   ```bash
   sudo apt update
   sudo apt install -y apt-transport-https ca-certificates curl
   curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
   echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
   sudo apt update
   sudo apt install -y kubelet kubeadm kubectl
   ```
2. Initialize the cluster:
   ```bash
   sudo kubeadm init
   ```
3. Set up `kubectl` for the user:
   ```bash
   mkdir -p $HOME/.kube
   sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
   sudo chown $(id -u):$(id -g) $HOME/.kube/config
   ```
4. Deploy a network plugin:
   ```bash
   kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
   ```
5. Verify the cluster:
   ```bash
   kubectl get nodes
   ```

---

## Usage
Clone this repository and navigate to the respective task directories to access the scripts and files.

```bash
git clone <YOUR-GITHUB-LINK>
cd <PROJECT-NAME>
```

---

## Author
- Name: [Your Name]
- GitHub: [Your GitHub Profile]
- Contact: [Your Email]

---

## License
This project is licensed under the MIT License - see the LICENSE file for details.
