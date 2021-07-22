yarn --registry=https://registry.npm.taobao.org

yarn

yarn build && echo 'build 完成'

docker build -t zbb/testcicd:v1 .
