FROM ubuntu:noble

ARG POSTFIX_UID=4005
ARG POSTFIX_GID=4005
ARG DOVECOT_UID=4006
ARG DOVECOT_GID=4006
ARG VMAIL_UID=4007
ARG VMAIL_GID=4007
ARG OPENDKIM_UID=4008
ARG OPENDKIM_GID=4008
RUN apt-get update && apt-get install -qy postfix

RUN groupadd -g $VMAIL_GID vmail && \
    useradd -u $VMAIL_UID -g vmail -s /bin/false vmail && \
    mkdir /mail && \
    chown -R vmail:vmail /mail

RUN groupadd -g ${OPENDKIM_GID} opendkim

RUN groupadd -g ${DOVECOT_GID} dovecot && \
    useradd -u $DOVECOT_UID -g dovecot -s /bin/false dovecot
RUN groupmod -g ${POSTFIX_GID} postfix && \
    usermod -u ${POSTFIX_UID} -g ${POSTFIX_GID} postfix && \
    gpasswd -a postfix opendkim

CMD [ "/usr/sbin/postfix", "start-fg" ]
