![Lab Architecture](https://github.com/ahmeedaly/paymob-tech-task/blob/main/LabInfra.jpg?raw=true "Lab Architecture")

# Paymob Technical Task

CI/CD with GitHub, Jenkins, Maven, Ansible and Docker.\
\
This repository contains the necessary files and code to set up a CI/CD pipeline using GitHub, Jenkins, Maven, Ansible, and Docker.\
\
The pipeline includes setting up an Ansible server, integrating a Docker host with Ansible, creating Ansible playbooks for building Docker images and containers, and integrating Ansible with Jenkins for continuous integration and continuous deployment (CI/CD).


## CI/CD Architecture

The CI/CD Architecture involves the following steps:
- Setting up an Ansible server
- Integrating a Docker host with Ansible
- Creating Ansible playbook to:
     - Authenticate to **AWS Private Elastic Container Registry**
     - Create **ECR Repository**
     - Build, tag & Push Docker image to **Private Repo**
     - Create & Run Docker Containers
 - Integrating Ansible with Jenkins
 - Creating a CI/CD job in Jenkins to:
     - Build & analyze the code using SonarQube
     - Copy project files onto Ansible server
     - Use ansible playbook to Build, Push & Deploy image on Docker containers

All containers are deployed inside a custom-bridge network so that all containers can reference & communicate with each other using their corresponding names to avoid hassle of\
managing and changing IP addresses since containers are ephemeral and meant to be destroyed.\
\
\
**This Setup is implemented using EC2 Instances on AWS**
\
\
Some Jenkins plugins are installed in order to leverage current architecture:
   - Sonarqube scanner plugin
   - GitHub plugin
   - Maven plugin





## CI/CD Setup

```bash

git clone https://github.com/ahmeedaly/paymob-tech-task.git
cd paymob-tech-task
docker-compose up -d


```


## IMPORTANT NOTES
For Sonarqube container to function smoothly, Docker host configuration **MUST** comply with the Elasticsearch production mode requirements and File Descriptors configuration.\
This can be done by executing following commands on Docker host:

```
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
sudo ulimit -n 131072
sudo ulimit -u 8192
```


To ensure proper functionality of the Ansible playbook, it is imperative that the remote host meets the following prerequisites:

1. **Python Version Compatibility**: The remote host should have Python version 3.9 or higher installed.
   
2. **Ansible AWS Module**: The Ansible AWS module must be installed on the ansible host.
   
3. **AWS SDK Dependencies**: Additionally, ansible host should have both `boto3` and `botocore` packages installed to enable the utilization of the AWS module.

These prerequisites are crucial for the seamless execution of the Ansible playbook and interaction with AWS services.
