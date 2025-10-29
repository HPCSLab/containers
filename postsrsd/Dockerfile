FROM ubuntu:noble

RUN apt-get update && apt-get install -y postsrsd

ENV SRS_DOMAIN=hpcs.cs.tsukuba.ac.jp
ENV SRS_SECRET=/etc/postsrsd/secret
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
