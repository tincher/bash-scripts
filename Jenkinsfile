#!groovy​

pipeline {
    agent any
    stages {
        stage('Checkout'){
            steps {
                checkout scm
            }
        }
        stage('Deploy'){
            steps {
                dir('./bash-scripts'){
                    sh './deploymyscripts.sh'
                }
            }
        }
    }
}
