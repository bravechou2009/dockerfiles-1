FROM ivotron:mybase

MAINTAINER Ivo Jimenez

RUN sudo apt-get update
RUN sudo apt-get install --yes --force-yes golang mercurial
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
