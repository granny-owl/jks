pipeline {
    agent any

    stages {
        stage('Start') {
            steps {
                echo 'Starting..'
            }
        }
        stage('Create Docker Image') {
            steps {
                script {
                    sh 'docker build -t jks_img'
                }
            }
        }
        stage('Docker Run') {
            steps {
                script {
                    sh 'docker compose up'
                }
            }
        }
    }
}
