pipeline{
    agent{
        docker {
            images: 'node:10'
            args '-p 20000:8080'
        }
    }
    stages{
        stage("Build"){
            steps{
                sh 'yarn install'

            }
        }
        stage("Deploy"){
            steps{
                sh 'ls -la'
                sh 'echo "deploy stage"'
            }
        }
    }
}