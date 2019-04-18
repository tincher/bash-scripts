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
                sh './deploymyscripts.sh'
            }
        }
    }
}
