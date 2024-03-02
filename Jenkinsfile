pipeline {
    agent any 
    stages {
        stage('Checkout') { 
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '1e002ef6-2466-445b-9b96-7c184d319483', url: 'https://github.com/TechGroup2020/spring2024.git']]) 
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn clean install ' 
            }
        }
        
        stage('Code analysis') {
            steps{
                withSonarQubeEnv(credentialsId: 'sonar-token-1' , installationName: 'sonarqube.10.4') {
                sh " mvn clean verify sonar:sonar -Dsonar.projectKey=firstProject -Dsonar.projectName='firstProject'"
                            } 
                                }
                           }
        stage('Dockerization') {
			steps {
			    sh 'docker stop pipecont '
				sh 'docker rm pipecont '
				sh 'docker build -t pipeimg . '
				sh 'docker run -i --name pipecont --network=gomatha --ip 192.168.1.50  -p 6565:6565  pipeimg /bin/bash'
			    }
        
        }
        stage('Deployment') {
			steps {
			    
			    sh 'docker start pipecont'
				sh 'docker exec pipecont ./startup.sh'
				
			}
        
       
        
    }
        
    }
    
}
