FROM node:10

WORKDIR /app

COPY . /app

RUN yarn --registry=https://registry.npm.taobao.org

RUN yarn

# RUN yarn serve

CMD yarn serve
