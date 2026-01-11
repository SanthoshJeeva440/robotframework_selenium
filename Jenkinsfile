pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                withChecks(name: 'Install Dependencies', includeStage: true) {
                    sh '''
                        python3 -m venv venv
                        . venv/bin/activate
                        python3 -m pip install --upgrade pip setuptools
                        python3 -m pip install -r resources/configuration/requirements.txt --no-cache-dir -v
                        python3 -m pip install webdrivermanager
                    '''
                }
            }
        }

        stage('Run Robot Tests') {
            steps {
                withChecks(name: 'Robot Tests', includeStage: true) {
                    sh '''
                        robot --version
                    '''
                }
            }
        }
    }

    post {
        success {
            publishChecks(
                name: 'Pipeline',
                title: 'Pipeline Success',
                summary: 'All stages passed successfully'
            )
        }

        failure {
            publishChecks(
                name: 'Pipeline',
                conclusion: 'FAILURE',
                title: 'Pipeline Failed',
                summary: 'One or more stages failed'
            )
        }

        always {
            deleteDir()
        }
    }
}
