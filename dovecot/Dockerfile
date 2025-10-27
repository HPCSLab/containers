FROM ubuntu:noble

RUN apt-get update && apt-get install -qy dovecot-core dovecot-imapd

CMD [ "/usr/sbin/dovecot", "-F" ]
