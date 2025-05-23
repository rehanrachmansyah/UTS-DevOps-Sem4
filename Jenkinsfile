pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'development', url: 'https://github.com/rehanrachmansyah/UTS-DevOps-Sem4.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'pip install -r requirements.txt'
                sh 'pytest || echo "Test failed!"'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        stage('Deploy to Staging') {
            steps {
                sh 'docker stop flask-staging || true'
                sh 'docker rm flask-staging || true'
                sh 'docker run -d -p 5001:5000 --name flask-staging flask-app'
            }
        }
    }
}
