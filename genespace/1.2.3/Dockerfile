FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

ARG ORTHOFINDER_VERSION
ARG MCSCANX_VERSION
ARG GENESPACE_VERSION

RUN apt-get -qq update && apt-get -qq -y install \
    wget libgomp1 git make build-essential r-base default-jre default-jdk curl libxml2-dev


RUN cd /usr/local/bin \
    && wget https://github.com/davidemms/OrthoFinder/releases/download/${ORTHOFINDER_VERSION}/OrthoFinder.tar.gz \
    && tar -zxf OrthoFinder.tar.gz
ENV PATH="${PATH}:/usr/local/bin/OrthoFinder/"
ENV PATH="${PATH}:/usr/local/bin/OrthoFinder/bin"

RUN cd /usr/local/bin \
    && git clone https://github.com/wyp1125/MCScanX.git \
    && cd MCScanX \
    && git checkout ${MCSCANX_VERSION} \
    && make
ENV PATH="${PATH}:/usr/local/bin/MCScanX"

RUN apt-get -qq -y install libcurl4-openssl-dev

RUN Rscript -e 'install.packages(c("BiocManager", "data.table", "dbscan", "igraph", "R.utils", "ggplot2", "RCurl", "XML"))' \
    && Rscript -e 'BiocManager::install(c("Biostrings", "rtracklayer"))'

RUN wget https://github.com/jtlovell/GENESPACE/archive/refs/tags/v${GENESPACE_VERSION}.tar.gz \
    && R CMD INSTALL v${GENESPACE_VERSION}.tar.gz \
    && rm v${GENESPACE_VERSION}.tar.gz



  
