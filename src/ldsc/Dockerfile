# gwas container
FROM ubuntu:18.04

ENV TZ=Europe

# Essential tools
WORKDIR /tmp
COPY get-essentials.sh .
RUN chmod +x get-essentials.sh && bash get-essentials.sh

RUN conda install python=2.7.13
#pybedtools could not be installed with pip
RUN conda install --channel conda-forge --channel bioconda pybedtools
RUN yes | pip install argparse==1.3.0 bitarray==0.8.1 nose==1.3.4 numpy==1.8.0 pandas==0.17.0 scipy==0.11.0

WORKDIR /tools/ldsc
RUN git clone https://github.com/bulik/ldsc.git .

WORKDIR /tools/ldsc
 