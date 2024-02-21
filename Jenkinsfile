     pipeline {
        agent none
        stages {
         
          stage("build & analyze") {
            agent any
            steps {
              withSonarQubeEnv('sonar-scanner') {
                sh 'mvn clean package sonar:sonar'
              }
            }
          }
        }
      }
