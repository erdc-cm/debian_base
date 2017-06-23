FROM debian:jessie

MAINTAINER Proteus Project <proteus@googlegroups.com>

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN REPO=http://cdn-fastly.deb.debian.org \
    && echo "deb $REPO/debian jessie main\ndeb $REPO/debian-security jessie/updates main" > /etc/apt/sources.list \
    && apt-get update && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends --fix-missing \
    git \
    vim \
    jed \
    emacs \
    libfreetype6-dev \
    libpng-dev \
    wget \
    build-essential \
    python-dev \
    ca-certificates \
    bzip2 \
    unzip \
    libsm6 \
    pandoc \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    sudo \
    locales \
    libxrender1 \
    libav-tools \
    libmpich2-dev \
    liblapack-dev \
    freeglut3 \
    freeglut3-dev \
    libglew1.5 \
    libglew1.5-dev \
    libglu1-mesa \
    libglu1-mesa-dev \
    libgl1-mesa-glx \
    libgl1-mesa-dev \
    curl \
    libjpeg-dev \
    m4 \
    libssl-dev \
    ssh \
    mpich2 \
    python3 \
    python3-pip \
    python3-doc \
    python3-tk \
    python3-venv \
    python3-genshi \
    python3-lxml \
    python3-openssl \
    python3-pyasn1 \
    python3.4-venv \
    python3.4-doc \
    binfmt-support \
    python3-dev \
    python3-wheel \
    libffi-dev \
    python-lzma \
    python-pip \
    cmake \
    gfortran \
    nodejs.legacy \
    npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen
