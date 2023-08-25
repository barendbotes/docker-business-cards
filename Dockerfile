FROM nginx:1.25.2-alpine

ARG CARD
ARG NAME
ENV CARD=$CARD
ENV NAME=$NAME



COPY ./src/html/$CARD.html /usr/share/nginx/html/index.html
COPY ./src/stylesheets/$CARD.css /usr/share/nginx/html/stylesheet.css

# RUN sed -e "s/ \"NAME\": \"\$NAME\"/g" -i /usr/share/nginx/html/index.html

RUN sed -i 's/NAME/$NAME/g' /usr/share/nginx/html/index.html

# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]