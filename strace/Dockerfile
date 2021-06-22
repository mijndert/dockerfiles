FROM alpine:latest

LABEL maintainer = "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source = "https://github.com/mijndert/dockerfiles" 

RUN apk add --no-cache bash strace

ENTRYPOINT ["strace"]
