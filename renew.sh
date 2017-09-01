#!/bin/sh
certbot renew --pre-hook "nginx -s stop" --post-hook "nginx"