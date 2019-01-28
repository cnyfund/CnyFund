FROM docker.io/ubuntu:16.04
MAINTAINER taozhang

RUN apt-get update
RUN apt-get -y install build-essential libssl-dev libdb++-dev libboost-all-dev libqrencode-dev libminiupnpc-dev python-dev libmysqlclient-dev python-setuptools 
RUN mkdir -p /opt/cnyfund/bin
COPY cnyfund /opt/cnyfund/bin/
COPY ./start.sh /opt/cnyfund/bin
COPY ./stop.sh /opt/cnyfund/bin
EXPOSE 18188
EXPOSE 18189
ENTRYPOINT ["/opt/cnyfund/bin/start.sh" ]

