pipeline {
     agent any
 
 stages {
    stage ('Compile Stage'){
			steps {
			echo "Compile Success"
			      }
			}
      
      stage ('Provision Infrastructure'){
           steps {
           sh 'terraform init'
           sh 'terraform plan'
                 }
                                        }

     }
 
}
