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
        }
      }