pipeline {
    agent any
    stages {
        stage('Build and Deploy') {
            steps {
                script {
                    // Run the deploy.sh script
                     sh 'chmod +x ./scripts/deploy.sh'
                    sh './scripts/deploy.sh'
                    sh 'docker build -t reactimage:1.0 .'
                }
            }
        }
    }
    
    post {
        success {
            echo 'Build and Deploy successful!'
        }
        failure {
            echo 'Build or Deploy failed!'
        }
    }
}
