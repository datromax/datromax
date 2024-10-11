FROM debian:stretch
LABEL maintainer="Datromax Developers <dev@datromax.com>"
LABEL description="Dockerised DatromaxCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
