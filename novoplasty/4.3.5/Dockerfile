FROM continuumio/miniconda3:24.11.1-0

ARG VERSION

RUN apt-get update -qq \
  && apt-get -qq -y install git \
  && apt-get -qq -y install dos2unix 

RUN cd /usr/local/bin \
  && git clone https://github.com/ndierckx/NOVOPlasty.git \
  && cd NOVOPlasty \
  && git checkout NOVOPlasty$VERSION \
  && chmod 755 NOVOPlasty$VERSION.pl \
  && dos2unix /usr/local/bin/NOVOPlasty/NOVOPlasty4.3.5.pl

ENV PATH="${PATH}:/usr/local/bin/NOVOPlasty"
