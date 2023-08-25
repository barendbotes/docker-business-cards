FROM nginx:1.25.2-alpine
COPY ./src/html/index.html /usr/share/nginx/html/index.html
