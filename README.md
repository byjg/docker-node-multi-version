# Node Multi Version Docker Image

This image provide different node versions.

The versions available are:
 - 6.14.3 (LTS: Boron)
 - 7.10.1
 - 8.11.3 (LTS: Carbon)
 - 9.11.1
 - 10.5.0

## Running

Just set the environment variable "NODE_VERSION" with the desired major node version to use:

```
docker run -it --rm -e NODE_VERSION=9 byjg/node-multi-version:latest bash 
```

