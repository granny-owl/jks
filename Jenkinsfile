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
                    checkout scm
                    def customImage = docker.build("jks_img:${env.BUILD_ID}")
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



pipeline {
agent none
stages {
stage('Maven Install') {
agent {
docker {
image 'maven:3.5.0'
}
}
steps {
sh 'mvn clean install'
}
}
stage('Docker Build') {
agent any
steps {
sh 'docker build -t shanem/spring-petclinic:latest .'
}
}
}
}