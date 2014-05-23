# a base image based on ubuntu with the basics:
#   - bash-completion
#   - tmux
#   - git
#   - vim
#   - mosh
#   - openssh-client

FROM ubuntu

# this assumes that uid=501 and gid=20 correspond's to my user in the host machine

MAINTAINER Ivo Jimenez

RUN sudo apt-get update
RUN sudo apt-get install --yes --force-yes bash-completion tmux git vim mosh openssh-client
RUN sudo apt-get install --yes --force-yes g++ cfortran m4 libncurses5-dev
RUN sudo useradd --home-dir /home/ivo --uid 501 --gid 20 --password ubuntu ivo

ENV HOME "/home/ivo"

# below we assume that the built image is called 'mybase', i.e. was built like:
#
#   cd my_base
#   docker build -t mybase .


# assuming that HOME is shared over NFS from the host:
#
#   docker run -t -i -v /path/to/home/in/folder:/home/ivo:rw mybase bash


# to have the container execute .bashrc:
#
#   docker run -t -i -u ivo bash -l


# the two of the above combined:
#
#   docker run -t -i -u ivo -v /path/to/home/in/folder:/home/ivo:rw mybase bash -l
