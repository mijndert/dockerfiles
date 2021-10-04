FROM alpine:latest as builder 

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

ARG version=3.7.0

RUN apk --update add --no-cache wget \
    && wget -q https://get.helm.sh/helm-v${version}-linux-amd64.tar.gz \
    && tar -zxvf helm-v${version}-linux-amd64.tar.gz \
    && cp linux-amd64/helm /usr/bin/

FROM scratch

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

COPY --from=builder /usr/bin/helm /usr/bin/helm
