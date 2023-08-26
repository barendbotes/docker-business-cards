#!/bin/sh
set -xe
: "${NAME?Need an api url}"

sed -i "s|NAME|$NAME|g" /usr/share/nginx/html/$CARD.html
sed -i "s|COMPANY|$COMPANY|g" /usr/share/nginx/html/$CARD.html
sed -i "s|NUMBER|$NUMBER|g" /usr/share/nginx/html/$CARD.html
sed -i "s|EMAIL|$EMAIL|g" /usr/share/nginx/html/$CARD.html
sed -i "s|WEB|$WEB|g" /usr/share/nginx/html/$CARD.html
sed -i "s|ADDRESS|$ADDRESS|g" /usr/share/nginx/html/$CARD.html

exec "$@"