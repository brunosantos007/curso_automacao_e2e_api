pipeline{
    agent{
        docker{
            image 'ruby:2.7.4'
        }
    }

    triggers{
        cron('H/30 * * * *')
    }

    stages{
        stage('preparação'){
            steps{
                sh 'ruby --version'
                sh 'apt-get update'
                sh 'apt-get install sudo'
                sh 'sudo apt-get -y install freetds-dev'
                sh 'bundle install'
            }
        }
        stage('Regressivo API'){
            steps{
                sh 'cucumber -t @automation_api'
            }
        }
    }
}