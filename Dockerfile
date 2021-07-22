FROM node:10

WORKDIR /app

# COPY . /app

COPY ./chore/nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./dist/ /app/nginx/html/

# RUN yarn --registry=https://registry.npm.taobao.org

# RUN yarn

# RUN yarn serve

CMD nginx -g "daemon off;"
