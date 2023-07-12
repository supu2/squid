FROM alpine:3.18

RUN apk add --no-cache "squid<6" curl \
    && rm -rf /var/cache/apk/*
COPY squid.conf /etc/squid/squid.conf
COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
