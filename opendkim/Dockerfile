FROM ubuntu:noble

ARG POSTFIX_GID=4005
RUN apt-get update && apt-get install -y opendkim openssl
RUN groupadd -g ${POSTFIX_GID} postfix && gpasswd -a opendkim postfix

ENTRYPOINT ["/usr/sbin/opendkim"]
CMD ["-f", "-x", "/etc/opendkim/opendkim.conf"]
