# Node Multi Version Docker Image

This image provide different node versions.

The versions available are:
 - 4.9.1 (LTS: Argon)
 - 5.12.0
 - 6.14.4 (LTS: Boron)
 - 7.10.1
 - 8.11.4 (LTS: Carbon)
 - 9.11.2
 - 10.9.0

## Running

Just set the environment variable "NODE_VERSION" with the desired major node version to use:

```
docker run -it --rm -e NODE_VERSION=9 byjg/node-multi-version:latest bash 
```

