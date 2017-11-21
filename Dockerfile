FROM armv7/armhf-ubuntu
MAINTAINER daemonsthere@gmail.com

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

EXPOSE 8080
VOLUME /data

ADD files/qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get update &&\
  apt-get install -y qbittorrent-nox &&\
  apt-get -y autoremove &&\
  apt-get -y clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  mkdir -p /root/.config/qBittorrent

ADD files/qBittorrent.conf /root/.config/qBittorrent/qBittorrent.conf

WORKDIR /data
ENTRYPOINT ["qbittorrent-nox"]
