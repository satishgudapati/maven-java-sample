node{
    stage('SCM Checkout'){
        git 'https://github.com/satishgudapati/maven-java-sample.git'
    }
    stage('Sonar Qube Analysis'){
        withSonarQubeEnv(credentialsId: 'sonartocken') {
            sh 'mvn clean package sonar:sonar'
        }
    }
}
