pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                //sh 'rm -r *;git clone https://github.com/gr0undh0g/myrepository.gitt'
                sh 'echo "git clone" '
            }
        }
        stage('terraform init') {
            steps {
                //sh '/home/ec2-user/terraform init ./jenkins'
                sh 'echo "terraform init" '
            }
        }
        stage('terraform plan') {
            steps {
                //sh 'ls ./jenkins; sudo /home/ec2-user/terraform plan ./jenkins'
                sh 'echo "terraform plan" '
            }
        }
        stage('terraform ended') {
            steps {
                //sh 'echo "Ended...bbb.!!"'
                sh 'echo "terraform ended" '
            }
        }

        
    }
}
