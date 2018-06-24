#!/usr/bin/env bash

source nodelist

source $NVM_DIR/nvm.sh

for index in ${!NODE_VERSION_LIST[*]}
do
    nvm install ${NODE_VERSION_LIST[$index]}
done

