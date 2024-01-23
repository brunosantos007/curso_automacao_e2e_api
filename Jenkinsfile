pipeline {
    agent {
        docker {
            image 'ruby:2.7.4'
            args '-v C:/Users/Pc/OneDrive/Área de Trabalho/curso_automacao_e2e_api:/workspace'
        }
    }

    triggers {
        cron('H/30 * * * *')
    }

    stages {
        stage('preparação') {
            steps {
                bat 'ruby --version'
                bat 'bundle install'
            }
        }
        stage('Regressivo API') {
            steps {
                bat 'cd /workspace && cucumber -t @automation_api'
            }
        }
    }
}
