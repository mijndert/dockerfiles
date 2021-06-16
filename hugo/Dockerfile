# docker run -v $PWD:/src -p 4000:1313 --rm hugo server --bind 0.0.0.0

FROM alpine:latest

RUN apk add --no-cache hugo

WORKDIR /src

VOLUME [ "/src" ]

EXPOSE 1313

ENTRYPOINT ["hugo"]

