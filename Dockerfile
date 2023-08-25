FROM nginx:1.25.2-alpine

ARG CARD
ARG NAME
ARG COMPANY
ARG NUMBER
ARG EMAIL
ARG WEB
ARG ADDRESS
ENV CARD=$CARD
ENV NAME=$NAME
ENV COMPANY=$COMPANY
ENV NUMBER=$NUMBER
ENV EMAIL=$EMAIL
ENV WEB=$WEB
ENV ADDRESS=$ADDRESS


COPY ./src/html/$CARD.html /usr/share/nginx/html/index.html
COPY ./src/stylesheets/$CARD.css /usr/share/nginx/html/stylesheet.css

# RUN sed -e "s/ \"NAME\": \"\$NAME\"/g" -i /usr/share/nginx/html/index.html

RUN sed -i "s|NAME|$NAME|g" /usr/share/nginx/html/index.html
RUN sed -i "s|COMPANY|$COMPANY|g" /usr/share/nginx/html/index.html
RUN sed -i "s|NUMBER|$NUMBER|g" /usr/share/nginx/html/index.html
RUN sed -i "s|EMAIL|$EMAIL|g" /usr/share/nginx/html/index.html
RUN sed -i "s|WEB|$WEB|g" /usr/share/nginx/html/index.html
RUN sed -i "s|ADDRESS|$ADDRESS|g" /usr/share/nginx/html/index.html

# Documentation
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]