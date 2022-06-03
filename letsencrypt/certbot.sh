#!/bin/bash
docker run -ti --rm \
    -v "/home/stark/docker/letsencrypt/certs:/etc/letsencrypt" \
    -v "/home/stark/docker/letsencrypt/config/cloudflare.ini:/cloudflare.ini" \
    certbot/dns-cloudflare:arm64v8-latest \
    certonly \
    --dns-cloudflare \
    --dns-cloudflare-credentials /cloudflare.ini \
    -d "stark.dog" \
    -d "*.stark.dog" \
    --email rmdelkss@gmail.com \
    --agree-tos \
    --server https://acme-v02.api.letsencrypt.org/directory