FROM nginx:1.25.2-alpine
ARG NAME
ARG CARD

ENV ENV_NAME=$NAME
ENV ENV_CARD=$CARD

CMD echo "$ENV_NAME" "$ENV_CARD" "$NAME" "$CARD" 
COPY ./src/html/'$ENV_NAME'.html /usr/share/nginx/html/index.html
COPY ./src/stylesheets/'$ENV_CARD'.css /usr/share/nginx/html/stylesheet.css



# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]