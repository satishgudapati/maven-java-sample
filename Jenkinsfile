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
    stage("Quality Gate"){
        timeout(time: 1, unit: 'HOURS') {
            def qg = waitForQualityGate()
            if (qg.status != 'OK') {
                error "Pipeline aborted due to quality gate failure: ${qg.status}"
        }
    }
}
