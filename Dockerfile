FROM programmerzbb/node-nginx
# FROM programmerzbb/nginxweb

RUN mkdir -p /app/nginx/html

WORKDIR /app

# COPY . /app

COPY ./chore/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf

RUN npm config set --registry=https://registry.npm.taobao.org

RUN npm i

RUN npm run build

COPY ./dist/ /app/nginx/html/

# 让nginx 服务卡到前台不结束，防止docker容器关闭
CMD /usr/local/nginx/sbin/nginx -g "daemon off;"
# CMD nginx
