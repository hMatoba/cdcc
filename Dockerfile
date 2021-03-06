FROM nginx:alpine

RUN apk update &&\
    apk --no-cache add certbot &&\
    mkdir -p /app/cert &&\
    mkdir -p /run/nginx
COPY nginx.template /etc/nginx/nginx.template
ADD initialize.sh  /app/cert
ADD renew.sh  /app/cert
ADD root /var/spool/cron/crontabs
WORKDIR /app/cert
EXPOSE 80 443

ENTRYPOINT ["sh", "./initialize.sh"]
