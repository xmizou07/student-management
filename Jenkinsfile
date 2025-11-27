pipeline {
    agent any

    tools {
        maven 'maven3'
        jdk 'jdk17'
    }

    stages {
        stage('Checkout from GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/xmizou07/student-management.git'
            }
        }

        stage('Build - Clean & Package') {
            steps {
                sh 'mvn clean package'
            }
        }
    }

    post {
        success {
            echo "Build successful! Check the target/ folder."
        }
        failure {
            echo "Build failed."
        }
    }
}
