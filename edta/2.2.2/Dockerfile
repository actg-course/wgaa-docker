FROM continuumio/miniconda3:24.11.1-0

ARG VERSION

RUN apt-get update -qq \
  && apt-get -qq -y install git

RUN cd /usr/local/bin \
  && git clone https://github.com/oushujun/EDTA.git \
  && cd EDTA \
  && git checkout v${VERSION} \
  && chmod 755 EDTA.pl

RUN conda config --add channels conda-forge \ 
  && conda update -n base --all

RUN conda install -n base mamba

RUN conda create -n EDTA 
RUN echo "source activate EDTA" > ~/.bashrc
RUN mamba install -c conda-forge -c bioconda edta
RUN conda clean -a

ENV PATH="${PATH}:/usr/local/bin/EDTA:/opt/conda/envs/EDTA/bin"
