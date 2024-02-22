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
		 sh "ssh ec2-user@172.31.29.59 'sudo docker images'"
              }
            }
          }
        }
      }
