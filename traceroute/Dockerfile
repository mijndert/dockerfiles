FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

RUN apk add --no-cache iputils

ENTRYPOINT [ "traceroute" ]
