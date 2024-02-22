![Lab Architecture](https://github.com/ahmeedaly/paymob-tech-task/blob/main/LabInfra.jpg?raw=true "Lab Architecture")

# Paymob Technical Task

CI/CD with GitHub, Jenkins, Maven, Ansible and Docker.\
This repository contains the necessary files and code to set up a CI/CD pipeline using GitHub, Jenkins, Maven, Ansible, and Docker.\
The pipeline includes setting up an Ansible server, integrating a Docker host with Ansible, creating Ansible playbooks for building Docker images and containers, and integrating Ansible with Jenkins for continuous integration and continuous deployment (CI/CD).


## CI/CD Setup

The CI/CD pipeline involves the following steps:

    - Setting up an Ansible server
    - Integrating a Docker host with Ansible
    - Creating Ansible playbooks to:
        - Build Docker images
        - Create Docker containers
    - Integrating Ansible with Jenkins
    - Creating a CI/CD job in Jenkins to:
        - Build & analyze the code using SonarQube
        - Copy project files onto Ansible server
        - Use ansible playbook to Build image & Deploy it on Docker containers

All containers are deployed inside a custom-bridge network so that all containers can reference & communicate with each other using their corresponding names to avoid hassle of\
managing and changing IP addresses since containers are ephemeral and meant to be destroyed

Some Jenkins plugins are installed in order to leverge current archeticture:\
   - sonarqube scanner plugin
   - GitHub plugin
   - Maven plugin



This Setup is implemented using EC2 Instances on AWS

```bash
git clone https://github.com/ahmeedaly/paymob-tech-task.git
cd paymob-tech-task
docker-compose up -d


```
