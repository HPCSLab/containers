#!/bin/sh

exec /usr/sbin/postsrsd \
    -d "$SRS_DOMAIN" \
    -s "$SRS_SECRET" \
