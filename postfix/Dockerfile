FROM ubuntu:noble

RUN apt-get update && apt-get install -qy postfix

CMD [ "/usr/sbin/postfix" "start-fg" ]
