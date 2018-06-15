pipeline {
    agent {
        docker { image 'microsoft/nanoserver:latest' }
    }
    stages {
        stage('Version test') {
            steps {
                bat 'cmd --version'
            }
        }
    }
}