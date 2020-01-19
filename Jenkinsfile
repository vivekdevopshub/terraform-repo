pipeline{
    agent any
        environment {
        PATH = "${PATH}:${getTerraformPath()}"
                }
    stages{
        stage('Terraform Init') {
            steps{
                sh "terraform init"
                sh "terraform 0.12upgrade -yes"
                }
        }
        
 //       stage('Terraform Plan') {
 //           steps{
 //               sh "terraform plan"
  //          }
  //      }
        
        
    }
 }
def getTerraformPath(){
def tfHome = tool name: 'terraform', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}
