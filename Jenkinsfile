// Jenkinsfile
pipeline {
    agent any
  
  stages {
    
       stage('git clone') {
             steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/vivekdevopshub/terraform-repo.git'
                  }
                           }
    
    stage('Compile')  {
         steps{
           echo "Compilation started"
             }
                      }

         }
    }
