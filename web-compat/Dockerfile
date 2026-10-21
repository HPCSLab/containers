#FROM httpd:2.4-bookworm
FROM php:8.1-apache

ARG UID=48
ARG GID=48

RUN groupadd -g $GID apache && \
    useradd -m -s /bin/bash -u $UID -g $GID apache

ENV APACHE_RUN_USER=apache
ENV APACHE_RUN_GROUP=apache


COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod authnz_ldap
RUN a2enmod authz_groupfile
RUN a2enmod userdir

COPY userdir2.conf /etc/apache2/mods-enabled/userdir.conf
COPY upload-limit.ini /usr/local/etc/php/conf.d/upload-limit.ini
COPY session-upload-progress.ini /usr/local/etc/php/conf.d/session-upload-progress.ini

COPY stop-pukiwiki.conf /etc/apache2/conf-available/stop-pukiwiki.conf
COPY pukiwiki-stopped.html /var/www/hpcs-maintenance/pukiwiki-stopped.html
RUN a2enconf stop-pukiwiki
