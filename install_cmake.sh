#!/bin/bash

CMAKE_VERSION=3.27.7
wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-linux-x86_64.sh
chmod +x cmake-${CMAKE_VERSION}-linux-x86_64.sh
mkdir /opt/cmake && \
    ./cmake-${CMAKE_VERSION}-linux-x86_64.sh  --skip-license --prefix=/opt/cmake  &&\
    ln -s /opt/cmake/bin/* /usr/local/bin/
rm -rf cmake-${CMAKE_VERSION}-linux-x86_64.sh