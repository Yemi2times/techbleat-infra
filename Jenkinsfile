pipeline {
    agent any 
    stages {
          stage ('apply') {
            environment {
                aws_access_key_id = credentials ('Access_Key')
                aws_secrete_Acess_key = credentials ('Secrete_Key')
            }
        
           steps {
             'terraform init'
             'terraform apply -auto-approve'
            }
         }    
    }
}