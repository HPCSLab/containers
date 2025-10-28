FROM ubuntu:noble

ARG POSTFIX_GID=4005
ARG OPENDKIM_UID=4008
ARG OPENDKIM_GID=4008

RUN apt-get update && apt-get install -y opendkim openssl
RUN groupmod -g ${OPENDKIM_GID} opendkim && \
    usermod -u ${OPENDKIM_UID} -g ${OPENDKIM_GID} opendkim
RUN groupadd -g ${POSTFIX_GID} postfix && gpasswd -a opendkim postfix

USER opendkim

ENTRYPOINT ["/usr/sbin/opendkim"]
CMD ["-f", "-x", "/etc/opendkim/opendkim.conf"]
