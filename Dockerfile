FROM ubuntu:18.04

ADD . /u18

RUN /u18/install.sh && rm -rf /tmp && mkdir /tmp

RUN /u18/install_travis.sh && rm -rf /tmp && mkdir /tmp

ENV BASH_ENV "/etc/drydock/.env"
