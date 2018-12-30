# Node Multi Version Docker Image

This image provide different node versions.

The versions available are:
 - 4.9.1 (LTS: Argon)
 - 5.12.0
 - 6.16.0 (LTS: Boron)
 - 7.10.1
 - 8.15.0 (LTS: Carbon)
 - 9.11.2
 - 10.15.0 (LTS: Dubnium)
 - 11.6.0 

# Running

Just set the environment variable "NODE_VERSION" with the desired major node version to use:

```
docker run -it --rm -e NODE_VERSION=10 byjg/node-multi-version:latest bash 
```

