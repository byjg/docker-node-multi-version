#!/usr/bin/env bash

source nodelist

if [ -z "$1" ]
then
    echo "You need to pass the major node version. e.g. 7"
    echo "Available are: ${!NODE_VERSION_LIST[*]}"
    exit 1
fi

NODE_VERSION=${NODE_VERSION_LIST[$1]}

if [ -z "$NODE_VERSION" ]
then
    echo "Invalid version $1"
    echo "Available are: ${!NODE_VERSION_LIST[*]}"
    exit 2
fi

export NODE_PATH="${NVM_DIR}/versions/node/v${NODE_VERSION}/lib/node_modules"
export PATH="${NVM_DIR}/versions/node/v${NODE_VERSION}/bin:$PATH"

source ${NVM_DIR}/nvm.sh
nvm alias default ${NODE_VERSION}
nvm use default