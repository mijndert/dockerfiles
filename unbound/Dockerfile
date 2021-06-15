FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.label-schema.name="docker.pkg.github.com/mijndert/unbound-docker/unbound:latest"
LABEL org.label-schema.description="Unbound on Alpine"
LABEL org.label-schema.url="https://github.com/mijndert/unbound-docker"
LABEL org.label-schema.vcs-url="https://github.com/mijndert/unbound-docker"
LABEL org.label-schema.docker.cmd="docker run -d --name unbound -p 53:5053/udp -p 53:5053/tcp --restart=always docker.pkg.github.com/mijndert/unbound-docker/unbound:latest"

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
