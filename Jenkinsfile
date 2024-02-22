     pipeline {
        agent none
	tools {
             maven 'maven-3'
        }
        stages {
          stage("build & analyze") {
            agent any
            steps {
              withSonarQubeEnv('sonarqube-scanner') {
                sh 'mvn clean package sonar:sonar'
              }
            }
          }
	  stage('Execute SSH Commands') {
	    agent any
            steps {
              script {
		 sh '''
			scp -o StrictHostKeyChecking=no -r /var/jenkins_home/workspace/paymob-tech-task ec2-user@172.31.20.245:/home/ec2-user
			ssh -o StrictHostKeyChecking=no ec2-user@172.31.20.245 'ansible-playbook -i hosts build-deploy.yml'
		'''
              }
            }
          }
        }
      }
