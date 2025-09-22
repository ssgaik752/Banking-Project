pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/ssgaik752/Banking-Project.git'
      }
    }
    stage('Build Docker') {
      steps {
        sh 'docker build -t banking-app .'
      }
    }
    stage('Push to ECR') {
      steps {
        sh './push-to-ecr.sh'
      }
    }
    stage('Deploy to EKS') {
      steps {
        sh 'kubectl apply -f k8s/deployment.yaml'
      }
    }
  }
}
