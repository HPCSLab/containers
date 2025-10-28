FROM ubuntu:noble

RUN apt-get update && apt-get install -y opendkim openssl

ENTRYPOINT ["/usr/sbin/opendkim"]
CMD ["-f", "-x", "/etc/opendkim.conf"]
