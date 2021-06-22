FROM debian:stable-slim

LABEL maintainer = "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source = "https://github.com/mijndert/dockerfiles" 

ARG OPENTTD_VERSION="1.11.2"
ARG OPENGFX_VERSION="0.6.0"

# Get things ready
RUN mkdir -p /config \
    && mkdir /tmp/build

# Install some build dependencies (we remove these later to save space)
RUN apt-get update && \
    apt-get install -y \
    unzip \
    sudo \
    wget \
    git \
    g++ \
    make \
    cmake \
    patch \
    zlib1g-dev \
    liblzma-dev \
    liblzo2-dev \
    libsdl2-dev \
    pkg-config

# Build OpenTTD itself
WORKDIR /tmp/build

RUN git clone https://github.com/OpenTTD/OpenTTD.git . \
    && git fetch --tags \
    && git checkout ${OPENTTD_VERSION}

RUN mkdir -p /tmp/build/binary \
    && cd /tmp/build/binary \
    && cmake .. \
    && make

## Install OpenGFX
RUN mkdir -p /usr/local/share/games/openttd/baseset/ \
    && cd /usr/local/share/games/openttd/baseset/ \
    && wget -q https://cdn.openttd.org/opengfx-releases/${OPENGFX_VERSION}/opengfx-${OPENGFX_VERSION}-all.zip \
    && unzip opengfx-${OPENGFX_VERSION}-all.zip \
    && rm -rf opengfx-*.zip

# Add the entrypoint
ADD entrypoint.sh /entrypoint.sh

# Expose the volume
VOLUME /config

# Expose the gameplay port
EXPOSE 3979/tcp
EXPOSE 3979/udp

# Expose the admin port
EXPOSE 3977/tcp

# Tidy up after ourselves
# note: we don't remove libraries and compilers otherwise bad linking things happen
RUN apt-get remove -y \
    make \
    patch \
    git \
    wget

RUN rm -r /tmp/build

# Finally, let's run OpenTTD!
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
