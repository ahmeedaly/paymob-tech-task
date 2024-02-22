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
    - Build the code using Ansible
    - Deploy it on Docker containers
    
This Setup is implemented using EC2 Instances on AWS

```bash
git clone https://github.com/ahmeedaly/paymob-tech-task.git
cd paymob-tech-task
docker-compose up -d


```
