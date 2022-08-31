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
                script {
                    docker.build("jks_img:${env.BUILD_ID}")
                }
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker compose up'
            }
        }
    }
}