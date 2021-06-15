# Unbound

## Running the container

```
docker run -d --name unbound -p 53:5053/tcp -p 53:5053/udp --restart=always docker.pkg.github.com/mijndert/unbound-docker/unbound:latest
```

You can include your own config files with a Docker volume into `/etc/unbound/unbound.d`.

## Building

```
docker build -t ${USER}/unbound .
```
