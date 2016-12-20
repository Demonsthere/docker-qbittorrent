FROM debian:latest

MAINTAINER jakub.blaszczyk@sap.com
ONBUILD RUN apt-get update --fix-missing
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
EXPOSE 8080
VOLUME /data

ADD files/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y qbittorrent-nox
RUN mkdir -p /root/.config/qBittorrent
ADD files/qBittorrent.conf /root/.config/qBittorrent/qBittorrent.conf

WORKDIR /data
ENTRYPOINT ["qbittorrent-nox"]
CMD ["--help"]