FROM alpine:latest
LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

ENV ZNC_VERSION 1.8.2

ARG CMAKEFLAGS="-DWANT_PYTHON=YES -DWANT_PERL=NO -DWANT_IPV6=NO"
ARG MAKEFLAGS=""

RUN apk --update add --no-cache cmake build-base gettext icu-dev libressl-dev \
                                python3-dev perl-dev wget sudo \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --no-cache-dir --upgrade pip requests \
    && mkdir -p /src \
    && cd /src \
    && wget "http://znc.in/releases/znc-${ZNC_VERSION}.tar.gz" \
    && tar -zxf "znc-${ZNC_VERSION}.tar.gz" \
    && cd "znc-${ZNC_VERSION}" \
    && cmake ${CMAKEFLAGS} \
    && make -j$(nproc) $MAKEFLAGS \
    && make install \
    && apk del wget perl-dev \
    && rm -rf /var/cache/apk/* /src/*

ADD docker-entrypoint.sh /entrypoint.sh
ADD znc.conf.default /znc.conf.default
RUN chmod 644 /znc.conf.default

VOLUME /znc-data

EXPOSE 6667
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
