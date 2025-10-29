FROM ubuntu:noble

ARG POSTFIX_GID=4005
ARG OPENDKIM_UID=4008
ARG OPENDKIM_GID=4008

RUN apt-get update && apt-get install -y opendkim openssl rsyslogd
RUN groupmod -g ${OPENDKIM_GID} opendkim && \
    usermod -u ${OPENDKIM_UID} -g ${OPENDKIM_GID} opendkim
RUN groupadd -g ${POSTFIX_GID} postfix && gpasswd -a opendkim postfix

RUN wget https://github.com/namachan10777/whaleinit/releases/download/v0.0.4/whaleinit-$(uname -m)-linux-musl -O /whaleinit && \
    chmod 755 /whaleinit

ENTRYPOINT ["/whaleinit"]
