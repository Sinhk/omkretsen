FROM nginx:1.27-alpine


RUN \
apk add --no-cache --virtual=build-dependencies \
openssl \
&& mkdir /config/nginx -p \
&& curl https://ssl-config.mozilla.org/ffdhe2048.txt > /config/nginx/dhparams.pem

COPY ssl.conf /config/nginx/
COPY conf.d/ /etc/nginx/conf.d/
COPY init-keys.sh /docker-entrypoint.d/