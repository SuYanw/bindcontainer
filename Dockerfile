FROM ubuntu:bionic

FROM ubuntu:bionic

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc

COPY named.conf.options /etc/bind/named.conf.options

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf"]
