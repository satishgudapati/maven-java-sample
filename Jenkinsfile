node{
    stage('SCM Checkout'){
        git 'https://github.com/satishgudapati/maven-java-sample.git'
    }
    stage('Compile-Package'){
        sh 'mvn clean package'
    }
    stage('Sonar Qube Analysis'){
        withSonarQubeEnv(credentialsId: 'sonartocken') {
            sh 'mvn sonar:sonar'
        }
    }
}
