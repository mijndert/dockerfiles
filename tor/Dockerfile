FROM alpine:latest

LABEL maintainer = "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source = "https://github.com/mijndert/dockerfiles" 

RUN apk update \
    && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/community tor shadow \
    && rm -rf /var/cache/apk/* \
    && usermod -u 1000 tor

EXPOSE 9001

COPY torrc /etc/tor/torrc

RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT [ "tor" ]