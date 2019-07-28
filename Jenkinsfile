pipeline {
     agent any
 
 stages {
     stage (‘Set Terraform path’) {
       steps {
          script {
               def tfHome = tool name: ‘Terraform’
               env.PATH = “${tfHome}:${env.PATH}”
                 }
               sh ‘terraform —version’
             }
                                  }
 
 stage (‘Provision infrastructure’) {
     steps {
          sh ‘terraform init’
          sh ‘terraform plan’
 // sh ‘terraform destroy -auto-approve’
           }
                                }
  }
 
}
