# syntax=docker/dockerfile:1

#---------------------HOMAI------------------------#
# Created on Sat Aug 19 2023
#
# Copyright (c) 2023 The Home Made AI (HOMAI)
# Author: Javad Rezaie
# License: Apache License 2.0
#---------------------HOMAI------------------------#

FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# Installing necessary libraries
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    curl git python3-dev libpq-dev \
    make build-essential libssl-dev \
    zlib1g-dev libbz2-dev libreadline-dev \
    libsqlite3-dev wget curl llvm libncursesw5-dev \
    xz-utils tk-dev libxml2-dev libxmlsec1-dev \
    libffi-dev liblzma-dev


# Installing pyenv for python installation management
RUN curl https://pyenv.run | bash
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc &&\
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc &&\
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# Installing Poetry for Python package management
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc 

RUN bash -c "source ${HOME}/.bashrc"
