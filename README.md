
# Build and publish the image

```bash
$ podman login docker.io
$ podman build -t nginx:1.23 .
$ podman push localhost/nginx:1.23 docker.io/jonasbjork/nginx:1.23
```

