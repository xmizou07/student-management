pipeline {
    agent any

    tools {
        jdk 'JAVA_HOME'
        maven 'M2_HOME'
    }

    environment {
        JAVA_HOME = tool name: 'Java17', type: 'jdk'
        M2_HOME   = tool name: 'Maven3', type: 'maven'
        PATH      = "${env.M2_HOME}/bin:${env.JAVA_HOME}/bin:${env.PATH}"
    }

    stages {
        stage('Cloner le projet') {
            steps {
                git branch: 'main', url: 'https://github.com/xmizou07/student-management.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Afficher le livrable') {
            steps {
                echo 'Le livrable est généré dans le dossier target :'
                sh 'ls -la target'
            }
        }
    }

    post {
        success {
            echo '''Build réussi !
Click to learn more
'''
        }
        failure {
            echo '''Échec du build
Click to learn more
'''
        }
    }
}
