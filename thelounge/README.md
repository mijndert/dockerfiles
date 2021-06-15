## Running a container

![Docker Image CI](https://github.com/mijndert/thelounge-docker/workflows/Docker%20Image%20CI/badge.svg) 

Use `run-thelounge.sh` to run the container manually. No compose file is provided.

Make sure to have a look at the shell script before you launch anything. Make sure your volume binding and ID's are correct.

## Data directory

The Lounge reads and stores all of its configuration, logs and other data at `/var/opt/thelounge`.

## Adding users

Users can be added as follows:
```sh
$ docker exec -it thelounge thelounge add <username>
```

*Note: without [persisting data](#data-directory), added users will be lost when the container is removed.*

## Environment variables (advanced usage)

You can control how The Lounge is started through the following environment variables;

- `HOST` (equivalent to the `-H, --host` CLI option)
- `PORT` (equivalent to the `-P, --port` CLI option)
- `BIND` (equivalent to the `-B, --bind` CLI option)
