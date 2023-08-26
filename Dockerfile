FROM nginx:1.25.2-alpine

COPY ./src/html/* /usr/share/nginx/html/
COPY ./conf/default.conf /etc/nginx/templates/default.conf.template
COPY ./entryPoint.sh /

# Documentation
# EXPOSE 80

RUN chmod +x entryPoint.sh
ENTRYPOINT ["/entryPoint.sh"]

CMD ["nginx", "-g", "daemon off;"]