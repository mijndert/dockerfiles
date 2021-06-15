FROM alpine:latest as builder 

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/community terraform
    
FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

COPY --from=builder /usr/bin/terraform /usr/bin/terraform
