FROM ubuntu:noble
ARG POSTFIX_UID=4005
ARG POSTFIX_GID=4005
ARG DOVECOT_UID=4006
ARG DOVECOT_GID=4006
RUN apt-get update && apt-get install -qy dovecot-core dovecot-imapd

RUN groupadd postfix -g $POSTFIX_GID && \
    useradd postfix -u ${POSTFIX_UID} -g postfix -s /bin/false && \
    gpasswd -a mail postfix

RUN groupmod dovecot -g ${DOVECOT_GID} && \
    usermod dovecot -u $DOVECOT_UID -g $DOVECOT_GID -s /bin/false

CMD [ "/usr/sbin/dovecot", "-F" ]
