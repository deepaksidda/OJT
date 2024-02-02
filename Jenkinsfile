pipeline {
    agent any

    stages {
      stage('Checkout') {
            steps {
              
                git branch: 'main', url: 'https://github.com/deepaksidda/OJT.git'
            }
        }
        
        stage('Build AMI') {
            steps {
                script {
                    sh 'template.json'
                }
            }
        }
    }
}
