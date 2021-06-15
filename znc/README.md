# ZNC for Docker

![Docker](https://github.com/mijndert/znc-docker/workflows/Docker/badge.svg)

Run the [ZNC][] IRC Bouncer in a Docker container.

This was built just for me so grabbing the source and executing stuff without looking is NOT recommended.

[ZNC]: http://znc.in

## Prerequisites

Install [Docker][].

[Docker]: http://docker.com/

## Running

Have a directory ready to store your znc config. Mine is in ~/znc.
If you already have a znc config directory, change run-znc.sh to use the correct directory.

Also have a look at the PGID and PUID in that file to reflect your own ID.

Execute `run-znc.sh` to run the container.

## Configuring ZNC

If you've left everything at the default you'll find your znc web ui at port 9001.
The default username and password in znc.conf.default is mijndert / admin.
Change the username in the default config to your own.

## External Modules

If you need to use external modules, simply place the original `*.cpp` source
files for the modules in your `{DATADIR}/modules` directory. The startup
script will automatically build all .cpp files in that directory with
`znc-buildmod` every time you start the container.

This ensures that you can easily add new external modules to your znc
configuration without having to worry about building them. And it only slows
down ZNC's startup with a few seconds.

## DATADIR

ZNC stores all it's settings in a Docker volume mounted to `/znc-data` inside
the container.

### Mount a Host Directory

The simplest approach is typically to mount a directory off of your host machine
into the container. This is done with `-v $HOME/.znc:/znc-data` like in the
example above.

One issue with this though is that ZNC needs to run as it's own user within the
container, the directory will have it's ownership changed to UID 1000 (user) and
GID 1000 (group). Meaning after the first run, you might need root access to
manually modify the data directory.

## Building It Yourself

1. Follow Prerequisites above.
2. Checkout the source
3. Build container: `make build`
4. Run container: `./run-zsh.sh`
