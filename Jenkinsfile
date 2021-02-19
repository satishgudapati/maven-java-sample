node{
    stage('SCM Checkout'){
      git 'https://github.com/satishgudapati/maven-java-sample'
    }
    stage('Compile-Package'){
      sh 'mvn package'
    }
}
