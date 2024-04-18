FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

ARG VERSION

RUN apt-get -qq update && apt-get -qq -y install \
    wget libgomp1 xz-utils

RUN cd /usr/local/bin \
  && wget https://github.com/marbl/meryl/releases/download/v${VERSION}/meryl-${VERSION}.Linux-amd64.tar.xz \
  && tar -xJf meryl-${VERSION}.Linux-amd64.tar.xz

ENV PATH="${PATH}:/usr/local/bin/meryl-${VERSION}/bin"
