pipeline {
    agent { 
        docker {
            image 'gcc:4.8.5' 
        } 
    }
    environment {
        ENV_TIMEOUT_MS = 3000
        ENV_DEVELOP_IP = '127.0.0.1'
        ENV_EXECUTABLE = 'main'
        ENV_DEPLOY_DIR = 'main_server'
        ENV_NOTIFY_MSG = 'code review'
        ENV_ROBOT_HOOK = 'hook'
    }
    stages {
        stage('check') {
            steps {
                sh 'gcc --version'
                sh 'g++ --version'
            }
        }
        stage('build') {
            steps {
                sh './build.sh'
            }
        }
        stage("tests") {
            steps {

            }
        }
        stage("deploy") {
            steps {

            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'build_so/*.*', fingerprint: true
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}