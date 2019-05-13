FROM ubuntu:rolling
MAINTAINER Peter Zeller <p_zeller@cs.uni-kl.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    pandoc \
    latexmk \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get purge -f -y make-doc \
        texlive-fonts-extra-doc \
        texlive-fonts-recommended-doc \
        texlive-humanities-doc \
        texlive-latex-base-doc \
        texlive-latex-extra-doc \
        texlive-latex-recommended-doc \
        texlive-metapost-doc \
        texlive-pictures-doc \
        texlive-pstricks-doc \
        texlive-science-doc

WORKDIR /data
VOLUME ["/data"]