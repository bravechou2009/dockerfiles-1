FROM ivotron:mybase

MAINTAINER Ivo Jimenez

RUN sudo apt-get update
RUN sudo apt-get install --yes --force-yes autotools-dev autoconf automake cdbs gcc g++ git libboost-dev libboost-thread-dev libboost-program-options-dev libedit-dev libssl-dev libtool libfcgi libfcgi-dev libfuse-dev linux-kernel-headers libcrypto++-dev libcrypto++ libexpat1-dev pkg-config
RUN sudo apt-get install --yes --force-yes uuid-dev libkeyutils-dev libgoogle-perftools-dev libatomic-ops-dev libaio-dev libgdata-common libgdata13 libsnappy-dev libleveldb-dev libblkid-dev libudev-dev
RUN sudo apt-get install --yes --force-yes libclang-dev
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
