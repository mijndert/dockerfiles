# docker run -d --name mdbook --rm -p 3000:3000 -v $(PWD):/data -u $(id -u):$(id -g) -it mdbook mdbook serve -p 3000 -n 0.0.0.0

FROM rust:slim

LABEL maintainer = "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source = "https://github.com/mijndert/dockerfiles" 

ARG MDBOOK_VERSION="0.4.10"

RUN cargo install mdbook --vers ${MDBOOK_VERSION}

WORKDIR /data
VOLUME ["/data"]