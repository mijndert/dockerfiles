FROM node:alpine

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

ENV NODE_ENV production

ENV THELOUNGE_HOME "/var/opt/thelounge"
VOLUME "${THELOUNGE_HOME}"

RUN yarn global add thelounge@ \
    && yarn cache clean

ENV PORT 9000
EXPOSE ${PORT}

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["thelounge", "start"]
