FROM ubuntu:xenial
MAINTAINER Ivo Jimenez <ivo.jimenez@gmail.com>

RUN apt-get -yq update && \
    apt-get install -qy --fix-missing \
        texlive \
        texlive-latex-extra \
        texlive-math-extra && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
