#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "You need to pass the node version. e.g. 7.7.1"
    echo "Available are: ${NODE_VERSION_LIST}"
    exit 1
fi


export NODE_PATH="${NVM_DIR}/versions/node/v${1}/lib/node_modules"
export PATH="${NVM_DIR}/versions/node/v${1}/bin:$PATH"

source ${NVM_DIR}/nvm.sh
nvm alias default ${1}
nvm use default