node{
  
  stage('Checkout') {
       checkout scm
  }

 stage('Terraform Init')
  {
  sh 'sudo /home/ubuntu/terraform init ./jenkins'
  }

}
