FROM nginx
# FROM programmerzbb/nginxweb

RUN mkdir -p /app/nginx/html

WORKDIR /app

# COPY . /app

COPY ./chore/nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./dist/ /app/nginx/html/

# RUN yarn --registry=https://registry.npm.taobao.org

# RUN yarn

# RUN yarn serve

# 让nginx 服务卡到前台不结束，防止docker容器关闭
CMD nginx -g "daemon off;"
# CMD nginx
