pipeline {
    agent  any
    
    stages {
        stage('pull') {
            steps {
               echo 'gathering code from version control'
        }

        }          
      
 


        stage('build') { // new container to test
            steps {
               echo 'building...'
                }
            }
        
        stage('test') {
            
            steps {

                 echo 'testing...' 
                   }
        }
        
        stage('deploy')
        {

     
        steps
        {

         echo 'deploying...'
        }
        }
    }

    

}

