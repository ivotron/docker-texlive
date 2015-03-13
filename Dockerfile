FROM ubuntu:14.04
MAINTAINER Ivo Jimenez <ivo.jimenez@gmail.com>

RUN apt-get -yq update

# install tex-live
RUN apt-get install -qy texlive-latex-base \
    texlive-xetex latex-xcolor texlive-math-extra texlive-latex-extra \
    texlive-fonts-extra texlive-bibtex-extra texlive ptex-jtex \
    curl wget git fontconfig make

# cleanup
RUN apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
