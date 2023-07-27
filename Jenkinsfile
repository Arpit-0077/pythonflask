pipeline {
    agent any
    stages {
        stage ('SCM checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Arpit-0077/pythonflask.git'
            }
        }
        stage (' build image') {
            steps {
                sh '/usr/bin/docker image build -t arpit0077/jenkinsflask .'
            }
        }
        stage (' docker login'){
            steps {
                sh 'echo dckr_pat_ypWrt3vjLrVi3-2OI8NRm6qVdWg | /usr/bin/docker login -u arpit0077 --password-stdin'
            }
        }
        stage ('image push') {
            steps {
                sh '/usr/bin/docker image push arpit0077/jenkinsflask'
            } 
        }
        stage (' remove service from docker') {
            steps {
                sh '/usr/bin/docekr service rm service5'
            }
        }
        
    }
}
