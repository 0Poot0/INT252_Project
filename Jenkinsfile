pipeline {
    agent any

    environment {
        NODE_ENV = 'development'
    }

    tools {
        nodejs 'NodeJS 18'
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies (simulated)...'
                sh 'echo npm install complete'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests (simulated)...'
                sh 'echo All tests passed'
            }
        }

        stage('Build Project') {
            steps {
                echo 'Building project (simulated)...'
                sh 'echo Build complete'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application (simulated)...'
                sh 'echo Deploy complete'
            }
        }
    }

    post {
        success {
            echo '✅ Simulated pipeline completed successfully.'
        }
        failure {
            echo '❌ Simulated pipeline failed.'
        }
    }
}
