pipeline {
    agent any

    stages {
        stage('Start') {
            steps {
                echo 'Building..'
            }
        }
        stage('Create Docker Image') {
            steps {
                sh 'docker build -t jks_img'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker compose up'
            }
        }
    }
}