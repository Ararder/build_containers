#!/bin/sh
# plink

apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    libgomp1 \

wget --no-check-certificate https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20200616.zip && \
    unzip plink_linux_x86_64_20200616.zip && \
    rm -rf plink_linux_x86_64_20200616.zip && \
    mv plink_linux_x86_64_20200616/plink /bin



wget --no-check-certificate https://s3.amazonaws.com/plink2-assets/alpha2/plink2_linux_x86_64.zip && \
    unzip plink2_linux_x86_64.zip && \
    rm -rf plink2_linux_x86_64.zip && \
    mv plink2_linux_x86_64/plink2 /bin



wget --no-check-certificate https://cnsgenomics.com/software/gctb/download/gctb_2.05beta_Linux.zip && \
    unzip -j gctb_2.05beta_Linux.zip && \
    rm -rf gctb_2.05beta_Linux.zip && \
    mv gctb /bin

wget --no-check-certificate https://yanglab.westlake.edu.cn/software/gcta/bin/gcta-1.94.1-linux-kernel-3-x86_64.zip && \
    unzip gcta-1.94.1-linux-kernel-3-x86_64.zip && \
    rm -rf gcta-1.94.1-linux-kernel-3-x86_64.zip && \
    mv gcta-1.94.1-linux-kernel-3-x86_64/gcta-1.94.1 /bin/gcta
