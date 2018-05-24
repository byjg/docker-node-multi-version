# Node Multi Version Docker Image

This image provide different node versions.

The versions available are:
 - 7.10.1
 - 8.11.2
 - 9.11.1
 - 10.2.0

## Running

Just set the environment variable "NODE_VERSION" with the desired node version to use:

```
docker run -it --rm -e NODE_VERSION=9.11.1 byjg/node-multi-version:latest bash 
```


