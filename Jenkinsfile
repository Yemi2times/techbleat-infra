pipeline {
    agent any 
    stages {
          stage ('apply') {
            environment {
                AWS_ACCESS_KEY_ID = credentials ('Access_Key')
                AWS_SECRET_ACCESS_KEY = credentials ('Secrete_Key')
            }
        
           steps {
             sh 'terraform init'
             sh 'terraform apply -auto-approve'
            }
         }    
    }
}