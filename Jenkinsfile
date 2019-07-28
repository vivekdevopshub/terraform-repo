pipeline {
     agent any
 
 stages {
    
	 stage ('Git Checkout'){
		 steps {
                 git branch: ‘master’, url: ‘https://github.com/vivekdevopshub/terraform-repo.git’
                      }
	                       }
	 
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
