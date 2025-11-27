pipeline {
    agent any

    tools {
        maven 'M2_HOME'
        jdk 'JAVA_HOME'
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
