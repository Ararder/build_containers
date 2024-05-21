#!/bin/sh
# plink

apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    libgomp1 


mkdir plink plink2 gctb gcta magma

# plink
wget --no-check-certificate https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20200616.zip && \
    unzip plink_linux_x86_64_20200616.zip -d plink/ && \
    rm -rf plink_linux_x86_64_20200616.zip && \
    mv plink/plink /bin
# plink2
wget --no-check-certificate https://s3.amazonaws.com/plink2-assets/alpha2/plink2_linux_x86_64.zip && \
    unzip plink2_linux_x86_64.zip -d plink2/ && \
    rm -rf plink2_linux_x86_64.zip && \
    mv plink2/plink2 /bin
# gctb
wget --no-check-certificate https://cnsgenomics.com/software/gctb/download/gctb_2.5.1_Linux.zip && \
    unzip gctb_2.05beta_Linux.zip -d gctb && \
    rm -rf gctb_2.05beta_Linux.zip && \
    mv gctb/gctb_2.05beta_Linux/gctb /bin
#gcta
wget --no-check-certificate https://yanglab.westlake.edu.cn/software/gcta/bin/gcta-1.94.1-linux-kernel-3-x86_64.zip && \
    unzip gcta-1.94.1-linux-kernel-3-x86_64.zip -d gcta && \
    rm -rf gcta-1.94.1-linux-kernel-3-x86_64.zip && \
    mv gcta/gcta-1.94.1-linux-kernel-3-x86_64/gcta-1.94.1 /bin/gcta

# magma
wget --no-check-certificate https://ctg.cncr.nl/software/MAGMA/prog/magma_v1.10_static.zip && \
    unzip magma_v1.10_static.zip -d magma && \
    rm -rf magma_v1.10_static.zip && \
    mv magma/magma /bin 

# bedtools
wget --no-check-certificate https://github.com/arq5x/bedtools2/releases/download/v2.31.0/bedtools.static && \
    chmod +rwx bedtools.static && \
    mv bedtools.static /bin/bedtools
