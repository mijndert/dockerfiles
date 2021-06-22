FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

RUN apk --update add --no-cache unbound drill wget \
    && rm -rf /var/cache/apk/* /src/* \
    && wget -S -N https://www.internic.net/domain/named.cache -O /etc/unbound/root.hints \
    && mkdir -p /etc/unbound/unbound.d \
    && apk del wget

COPY unbound.conf /etc/unbound/

VOLUME /etc/unbound/unbound.d

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD [ "drill", "-p", "5053", "google.com", "@127.0.0.1" ]

ENTRYPOINT ["unbound", "-d"]
