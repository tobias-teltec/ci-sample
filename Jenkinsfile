pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:latest'
            args  '--entrypoint=""'
        }
    }
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/tobias-teltec/ci-sample.git'
            }
        }
        stage('Terraform Plan & Apply') {
            steps {
                dir('terraform') {
                sh 'terraform init'
                sh 'terraform plan-no-color -out=create.tfplan'
                sh 'terraform apply -no-color -auto-approve create.tfplan'    
                }
            }
        }    
    }   
}
