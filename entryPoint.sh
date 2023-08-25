#!/bin/bash

RUN sed -i "s|NAME|$NAME|g" /usr/share/nginx/html/$CARD.html
RUN sed -i "s|COMPANY|$COMPANY|g" /usr/share/nginx/html/$CARD.html
RUN sed -i "s|NUMBER|$NUMBER|g" /usr/share/nginx/html/$CARD.html
RUN sed -i "s|EMAIL|$EMAIL|g" /usr/share/nginx/html/$CARD.html
RUN sed -i "s|WEB|$WEB|g" /usr/share/nginx/html/$CARD.html
RUN sed -i "s|ADDRESS|$ADDRESS|g" /usr/share/nginx/html/$CARD.html