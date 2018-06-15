pipeline {
    agent any
    stages {
        stage('Version test') {
            steps {                
				bat 'powershell -ExecutionPolicy Bypass .\\test.ps1'
				bat 'test.bat'
				bat 'test.cmd'
            }
        }
    }
}