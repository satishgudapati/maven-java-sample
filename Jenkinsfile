node{
    stage('SCM Checkout'){
        git 'https://github.com/satishgudapati/maven-java-sample.git'
    }
    stage('Compile-Package'){
        sh 'mvn clean package'
    }
}
