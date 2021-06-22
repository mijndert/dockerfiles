FROM alpine:latest as builder 

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

ARG version=2.4.2

RUN apk --update add --no-cache wget \
    && wget -q https://github.com/caddyserver/caddy/releases/download/v${version}/caddy_${version}_linux_amd64.tar.gz \
    && tar -zxvf caddy_${version}_linux_amd64.tar.gz \
    && cp caddy /usr/bin/

FROM scratch

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
