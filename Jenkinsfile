pipeline {
     agent any
 
 stages {
    
	 stage ('Git Checkout'){
		 steps {
                 sh 'git clone https://github.com/vivekdevopshub/terraform-repo'
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
