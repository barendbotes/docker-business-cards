FROM nginx:1.25.2-alpine


ARG CARD

ENV CARD=$CARD

RUN echo $ENV_CARD $CARD

COPY ./src/html/$CARD.html /usr/share/nginx/html/index.html
COPY ./src/stylesheets/$CARD.css /usr/share/nginx/html/stylesheet.css



# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]