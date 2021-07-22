docker stop cicd

docker rm cicd

yarn --registry=https://registry.npm.taobao.org

yarn

yarn build && echo 'build 完成'

docker build -t zbb/testcicd:v1 . && echo '镜像打包完成'

docker run -itd --name cicd -p 8082:80 zbb/testcicd:v1 && echo '上线完成'
