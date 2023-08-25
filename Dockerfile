FROM nginx:1.25.2-alpine
COPY ./src/html /usr/share/nginx/html
COPY ./src/stylesheets /usr/share/nginx/html

# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]