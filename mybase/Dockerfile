# ivotron:mybase (should name it ivotron/mybase:1.0) but I'm not using versioning yet
#
# a base image based on ubuntu with the basics:
#   - bash-completion
#   - tmux
#   - git
#   - vim
#
# phusion/baseimage:0.9.10 contains:
#   - syslog-ng
#   - crond
#   - sshd
#   - runit
#   - setuser

FROM phusion/baseimage:0.9.10

# this assumes that uid=501 and gid=20 correspond's to my user in the host machine

MAINTAINER Ivo Jimenez

RUN sudo apt-get update
RUN sudo apt-get install --yes --force-yes bash-completion tmux git vim
RUN sudo useradd --shell /bin/bash --home-dir /home/ivo --uid 501 --gid 20 ivo
RUN echo ivo:ivo | chpasswd
RUN echo "ivo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ivo
RUN chmod 0440 /etc/sudoers.d/ivo
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME "/home/ivo"

# below we assume that the built image is called 'mybase', i.e. was built like:
#
#   cd mybase
#   docker build -t ivotron:mybase .

# Once this base image is ready, we run it with:
#
#   docker run -t -i -v /path/to/home/:/home/ivo:rw mybase bash
#
# for non-native scenarios (OSX) the above that $HOME is shared over NFS from
# the host to the guest VM (where docker runs in)

# to have the container execute .bashrc:
#
#   docker run -t -i -u ivo bash -l

# the two of the above combined:
#
#   docker run -t -i -u ivo -v /path/to/home/in/folder:/home/ivo:rw mybase bash -l
