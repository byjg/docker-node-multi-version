FROM ubuntu:18.04

# Set debconf to run non-interactively
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Install base dependencies
RUN apt-get update && apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        wget \
    && rm -rf /var/lib/apt/lists/*

# Define Versions
ENV NVM_VERSION v0.33.11
ENV NVM_DIR /usr/local/nvm
RUN mkdir -p $NVM_DIR

# Copy Assets
COPY assets/entrypoint.sh /
COPY assets/installnode.sh /usr/bin/installnode
COPY assets/setnode.sh /usr/bin/setnode
COPY assets/nodelist.sh /usr/bin/nodelist

# Install NodeJS
RUN curl https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash
RUN installnode

# Setting default Node Version
ENV NODE_VERSION 10

ENTRYPOINT [ "/entrypoint.sh" ]
