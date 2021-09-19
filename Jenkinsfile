pipeline {
    agent  any
    
    stages {
        stage('pull') {
            steps {
               echo 'gathering code from version control'
        }

        }        



        stage('verify branch'){
            steps{
        echo "$GIT_BRANCH"	}		
    }
	stage('docker')
	{
	sh 'docker -version'
	}
    
}
}

