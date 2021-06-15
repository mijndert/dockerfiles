FROM alpine:3

ENV CDK_VERSION=1.106.1

RUN apk -v --no-cache --update add \
        nodejs \
        npm \
        git \
        ca-certificates \
    && update-ca-certificates \
    && npm install -g aws-cdk@${CDK_VERSION}

VOLUME [ "/root/.aws" ]
VOLUME [ "/opt/app" ]

WORKDIR /opt/app

CMD ["cdk", "--version"]
