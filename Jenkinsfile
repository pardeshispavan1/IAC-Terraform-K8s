pipeline{
    agent any
    tools {
            terraform 'terraform-11'
        }
    stages{
        stage("Git Checkout"){
            steps{
                git credentialsId: 'GIT_HUB_CREDENTIALS', url: 'https://github.com/pardeshispavan1/IAC-Terraform-K8s'
                }
        }
        
    /*   stage("Terraform Destroy"){
            steps{
                sh 'terraform destroy --auto-approve'
                }
        } 
        
       stage("Terraform init"){
            steps{
                sh 'terraform init'
                }
        } */
        
        stage("Terraform plan"){
            steps{
                sh 'terraform plan'
                }
        }
        
        stage("Terraform apply"){
            steps{
                sh 'terraform apply --auto-approve'
                }
        }
    }

}