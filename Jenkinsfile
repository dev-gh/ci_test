pipeline {
	// Assumed that 
	// - this pipeline will use Docker on Windows so agent must support Windows containers	
	// - latest changes are fetched already by Jenkins pipeline plugin along with that file	
	// - clean-up is done on fetch by Jenkins pipeline so no old files kept
    agent any
		parameters {
        string(name: 'CLIENT_DIR', defaultValue: 'webrtc-proxy', description: 'Directory containing sources and build scripts for WebRTC client')
    }
    stages {
        stage('Build') {
            steps {				
				script {
					if(fileExists('params.CLIENT_DIR/test')) {
						echo 'WebRTC client executable is found'
					} else {
						error 'WebRTC client executable is not found'						
					}
				}					
            }
        }
    }
}