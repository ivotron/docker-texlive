FROM ubuntu:xenial
MAINTAINER Ivo Jimenez <ivo.jimenez@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yq update && \
    apt-get install -qy --no-install-recommends --fix-missing \
        texlive texlive-latex-extra texlive-math-extra texlive-science \
        python-pygments texlive-xetex texlive-bibtex-extra make && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
