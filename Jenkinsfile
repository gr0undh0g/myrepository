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
                sh 'rm -r *;git clone https://github.com/gr0undh0g/myrepository.git'
                sh 'echo "git clone" '
            }
        }
        stage('terraform init') {
            steps {
                sh '/usr/local/bin/terraform init /var/lib/jenkins/workspace/pipe/myrepository/'
                sh 'echo "terraform init" '
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls /var/lib/jenkins/workspace/pipe/myrepository/; /usr/local/bin/terraform plan /var/lib/jenkins/workspace/pipe/myrepository/'
                sh 'echo "terraform planzzzzz" '
            }
        }
        stage('terraform apply') {

            steps {
                sh 'ls /var/lib/jenkins/workspace/pipe/myrepository/; /usr/local/bin/terraform apply /var/lib/jenkins/workspace/pipe/myrepository/'
                sh 'echo "terraform apply" '

            }

        }
        stage('terraform ended') {
            steps {
                //sh 'echo "Ended...bbb.aaaaaaaaaaaa!!"'
                sh 'echo "terraform ended" '
            }
        }

        
    }
}
