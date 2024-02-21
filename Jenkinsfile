     pipeline {
        agent none
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
