pipeline {
      agent any
	  
	  stages {
	        stage ('Compile Stage'){
			steps {
				echo "Success Compile"
		//	sh 'mvn clean compile'
			      }
			}
			
			stage ('Testing stage')	{
			steps {
				echo "Success Testing"
		//	sh 'mvn test'
			      }
			}
			
			
			stage ('Deployment Stage') {
			steps {
				echo "Success Deployment"
		//	sh 'mvn deploy'
			      }
			}
			
	  }
}
