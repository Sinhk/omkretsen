FROM nginx:1.27-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY templates/ /etc/nginx/templates/
