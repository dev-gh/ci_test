pipeline {
    agent {
        docker { image 'microsoft/nanoserver:latest' }
    }
    stages {
        stage('Version test') {
            steps {
                sh 'cmd --version'
            }
        }
    }
}