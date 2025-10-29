#!/bin/sh

exec /usr/sbin/postsrsd \
    -d "$SRS_DOMAIN" \
    -s "$SRS_SECRET" \
    -l "0.0.0.0"
