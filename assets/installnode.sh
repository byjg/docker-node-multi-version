#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "Node version is required"
    exit 1
fi

source $NVM_DIR/nvm.sh

nvm install $1
nvm use $1
shift
while [ ! -z "$1" ]
do
   npm install -g $1
   shift
done
