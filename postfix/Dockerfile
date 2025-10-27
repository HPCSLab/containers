FROM ubuntu:noble

ARG POSTFIX_UID=4005
ARG POSTFIX_GID=4005
ARG DOVECOT_UID=4006
ARG DOVECOT_GID=4006
RUN apt-get update && apt-get install -qy postfix

RUN groupadd -g ${DOVECOT_GID} dovecot && \
    useradd -u $DOVECOT_UID -g dovecot -s /bin/false dovecot
RUN groupmod -g ${POSTFIX_GID} postfix && \
    usermod -u ${POSTFIX_UID} -g ${POSTFIX_GID} postfix

CMD [ "/usr/sbin/postfix" "start-fg" ]
