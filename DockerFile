FROM ubuntu

MAINTAINER Josselin Pujo

COPY ./consul /consul
COPY ./start.sh /start.sh
RUN chmod a+x /consul
RUN chmod a+x /start.sh

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53/udp

VOLUME /data
ENV GOMAXPROCS 2

ENTRYPOINT ["/start.sh"]
