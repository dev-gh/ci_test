pipeline {
	// Assumed that 
	// - this pipeline will use Docker on Windows so agent must support Windows containers	
	// - latest changes are fetched already by Jenkins pipeline plugin along with that file	
	// - clean-up is done on fetch so no old files kept
    agent any
    stages {
        stage('Build') {
            steps {				
				// Currently Docker API seems is not fully supported on Windows (https://issues.jenkins-ci.org/browse/JENKINS-34454)
				// so use batch instead
				bat 'build_and_run_image.cmd'
				
				script {
					if(fileExists('x64/Release/test1.exe')) {
						echo 'Built executable found'					
					} else {
						error 'Built executable is not found'						
					}
				}				
            }
        }
    }
}