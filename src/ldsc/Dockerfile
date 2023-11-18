# gwas container
FROM ubuntu:18.04

ENV TZ=Europe

# Essential tools
WORKDIR /tmp

COPY get-essentials.sh .
RUN chmod +x get-essentials.sh && bash get-essentials.sh

RUN conda install --channel bioconda python=2.7.13
RUN conda install --channel bioconda pybedtools=0.7
RUN conda install --channel bioconda nose=1.3 
RUN conda install --channel bioconda bitarray=0.8
RUN conda install --channel bioconda pip
RUN yes | pip install scipy==0.18
RUN yes | pip install numpy==1.16
RUN yes | pip install pandas==0.20


WORKDIR /tools/ldsc
RUN git clone https://github.com/bulik/ldsc.git . && cp munge_sumstats.py ldsc.py /bin && chmod +x /bin/munge_sumstats.py /bin/ldsc.py
WORKDIR /tools/ldsc
 