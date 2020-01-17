node{
  
  stage('Checkout') {
       checkout scm
  }

  // Run terraform init
  stage('init') {
         withCredentials([[
        $class: 'AmazonWebServicesCredentialsBinding',
        credentialsId: credentialsId,
        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
      ]]) {
        
          sh 'terraform init'
              }
      }


}
