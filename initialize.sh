#!/bin/sh
envsubst '$$LINK_NAME,$$DOMAIN' < /etc/nginx/nginx.template > /etc/nginx/nginx.conf
certbot certonly --standalone -t -d ${DOMAIN} -m ${E_MAIL} --agree-tos -n
nginx
crond -f