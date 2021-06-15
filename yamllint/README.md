# Yamllint Docker image based on Alpine

To lint all files in a directory:

`docker run --rm -ti -v $(pwd):/workdir mijndert/yamllint-docker *`

Or just one file:

`docker run --rm -ti -v $(pwd):/workdir mijndert/yamllint-docker ./filename.yaml`
