FROM nginx:1.25.2-alpine
ARG NAME
ENV env_name $NAME
ARG CARD
ENV card $CARD

COPY ./src/html/$card.html /usr/share/nginx/html/index.html
COPY ./src/stylesheets/$card.css /usr/share/nginx/html/stylesheet.css



# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]