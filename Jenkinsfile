node{
    stage('SCM Checkout'){
      git 'https://github.com/satishgudapati/maven-java-sample'
    }
    stage('Compile-Package'){
      sh 'mvn clean package'
    }
    stage('Email-Notification'){
        mail bcc: '', body: '''Hi Welcome to Jenkins email alerts
        Thanks
        Satish''', cc: '', from: '', replyTo: '', subject: 'Jenkins Job', to: 'satishdevopsguy@gmail.com'
    }
}
