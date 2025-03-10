# `qpdf` docker image

`qpdf` docs: <https://qpdf.readthedocs.io/en/stable/index.html>

## development

build the image locally:

```sh
docker build -t eins78/qpdf .
```

build and publish the image:

```sh
docker buildx create --use
docker buildx build --push --platform linux/amd64,linux/arm64 -t eins78/qpdf . 
# see https://hub.docker.com/r/eins78/qpdf
```

debug contents of container:

```sh
docker run --rm -it -v $(pwd):/data -w /data -u $(id -u):$(id -g) --entrypoint /bin/bash eins78/qpdf
```

## License

The contents of this repository are in the Public Domain.

`qpdf` is free software released under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).
