pipeline{
    agent{
        docker {
            image 'node:10'
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
            // steps{
            //     sh 'chmod +x ./scripts/*.sh'
            //     sh './scripts/deploy.sh'
            //     input '是否使用web网站？（点击继续）'
            //     sh 'echo "deploy stage"'
            // }
        }
    }
}