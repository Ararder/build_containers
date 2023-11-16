#!/bin/sh
apt-get update && apt-get install -y ca-certificates && update-ca-certificates

# (!) Keep the list below sorted (!)
apt-get update && apt-get install -y  --no-install-recommends apt-utils \
   autoconf \
   build-essential \
   cmake \
   curl \
   gfortran \
   git \
   libatlas-base-dev \
   libcurl4 \
   libcurl4-openssl-dev \
   libgomp1 \
   libgsl0-dev \
   libnss3 \
   libpcre2-dev \
   libquadmath0 \
   libxt-dev \
   make \
   parallel \
   perl \
   tar \
   tofrodos \
   unzip \
   vim \
   wget \
   zlib1g-dev \
   && \
   rm -rf /var/lib/apt/lists/*

curl -sSL https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -o /tmp/miniconda2.sh \
    && mkdir /root/.conda \
    && bash /tmp/miniconda2.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda2.sh

export PATH=$PATH:/opt/conda/bin