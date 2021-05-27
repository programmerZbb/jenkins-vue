pipeline{
    agent{
        docker {
            image 'node:10'
            args '-p 20001:8080'
        }
    }
    options {
        // This is required if you want to clean before build
        skipDefaultCheckout(true)
    }
    stages{
        stage("Build"){
            steps{
                cleanWs()
                // We need to explicitly checkout from SCM here
                checkout scm
                echo "Building ${env.JOB_NAME}..."
                sh "npm install -g yarn"
                sh 'yarn config set registry https://registry.npm.taobao.org/'
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