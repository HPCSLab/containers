FROM ubuntu:noble
ARG POSTFIX_UID=4005
ARG POSTFIX_GID=4005
ARG DOVECOT_UID=4006
ARG DOVECOT_GID=4006
RUN apt-get update && apt-get install -qy dovecot-core dovecot-imapd
RUN useradd -u $POSTFIX_UID -g $POSTFIX_GID -s /bin/false postfix
RUN useradd -u $DOVECOT_UID -g $DOVECOT_GID -s /bin/false dovecot

CMD [ "/usr/sbin/dovecot", "-F" ]
