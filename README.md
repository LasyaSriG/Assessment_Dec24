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

### Directory Structure

### `modules/`
Contains reusable Terraform modules that define specific resources or sets of resources. These modules help organize and encapsulate infrastructure code, making it easier to manage and reuse in different parts of your project.

### `instance_group/`
Defines a group of virtual machine instances that are managed together. This module is useful for scaling applications by automatically adding or removing instances based on load.

### `instance_template/`
Defines a template that specifies the configuration for individual virtual machine instances. The template is used to create instances in an instance group, and includes settings like machine type, disks, network configuration, and other settings.

### `load_balancer/`
Defines the load balancer resources that distribute incoming traffic across the instances in your instance group. It ensures high availability and scalability of your application by balancing traffic effectively.

### `service_account/`
Creates and manages a service account used by the infrastructure or other services to interact with Google Cloud resources. Service accounts allow you to define specific roles and permissions for applications to securely interact with GCP services.

### `vpc/`
Sets up the Virtual Private Cloud (VPC) which is a private network within Google Cloud. The VPC includes subnets, firewall rules, and other network settings that control how resources communicate with each other and the outside world.

### `main.tf`
The main configuration file where all resources and modules are defined. It brings together the different modules and configurations to build the desired infrastructure in Google Cloud.

### `output.tf`
Defines outputs that provide useful information about the infrastructure, such as IP addresses, instance names, and other resource details. Outputs are useful for sharing data between modules or presenting relevant information to the user.

### `variables.tf`
Defines the input variables for the Terraform configuration. These variables allow you to pass different values (such as region, instance type, or project ID) into the configuration, making the setup more flexible and reusable.


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
   
   gcloud app create --region=<REGION>
   
2. Deploy the application:
 
   gcloud app deploy app.yaml
   
3. Access the application:

   gcloud app browse
  
4. Monitor and manage the app using the GCP Console.



## Task 4: Docker Setup for Java Application

### Description
This task includes a `Dockerfile` to set up a Java application on an Ubuntu image with Tomcat and WAR file deployment.

### Files Included
- `Dockerfile`: Contains the configuration for building the Docker image.


### Docker Commands
1. Build the Docker image:

   docker build -t java-app .
  
2. Run the container:
  
   docker run -d -p 8080:8080 java-app
 
3. List running containers:
   
   docker ps
   
4. Stop and delete a container:
   
   docker stop <CONTAINER-ID>
   docker rm <CONTAINER-ID>
  
5. Create a volume and mount it:
   
   docker volume create app-volume
   docker run -d -v app-volume:/app -p 8080:8080 java-app
   
6. Push the image to Docker Hub:
   
   docker tag java-app <DOCKER-HUB-USERNAME>/java-app
   docker push <DOCKER-HUB-USERNAME>/java-app
   

## Task 5: Kubernetes Installation Steps

### Description
This task outlines the steps to install Kubernetes.

Refer to the Fifth_Task in the Repo for Installation steps.


## Usage
Clone this repository and navigate to the respective task directories to access the scripts and files.
