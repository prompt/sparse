# Docker: alpine + nginx

A simple alpine linux + nginx container using `envsubst` to replace Environment
Variables on start.

:safety_pin: Please consider [digest pinning][docker/digest-pinning] when
utilising a third-party Docker image, the Container Registry page for
[`sparse-docker-nginx`][packages/docker-nginx] provides a full list of tags and
their respective digests.

```Dockerfile
FROM ghcr.io/pr-mpt/sparse-docker-nginx

COPY index.html ./
```

## Configure nginx

You may provide a custom nginx configuration by writing your configuration to
`default.conf`, e.g:

```Dockerfile
FROM ghcr.io/pr-mpt/sparse-docker-nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html ./
```

[docker/digest-pinning]: https://docs.docker.com/engine/reference/commandline/pull/#pull-an-image-by-digest-immutable-identifier
[packages/docker-nginx]: https://github.com/pr-mpt/sparse/pkgs/container/sparse-docker-nginx
