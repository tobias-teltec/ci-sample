pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:latest'
            args  '--entrypoint=""'
        }
    }
    stages {
        stage('Terraform Init & Plan') {
            steps {
                dir('terraform') {
                sh 'terraform init'
                sh 'terraform plan-no-color -out=create.tfplan'   
                }
            }
        }    
        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                   sh 'terraform apply -no-color -auto-approve create.tfplan'
                }
            }
        }        
    }
}