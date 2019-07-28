pipeline {
     agent any
 
 stages {
    
	 stage ('Git Clone'){
		 steps{
		 sh 'rm -rf test2.sh'
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
