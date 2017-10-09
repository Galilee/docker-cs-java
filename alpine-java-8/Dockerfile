FROM maven:3.5-jdk-8-alpine
MAINTAINER Gabriel Malet <gmalet@galilee.fr>

RUN apk update \
    && apk add bash wget curl git openssh-client \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /root/.ssh
COPY resources/ssh_config /root/.ssh/config
COPY resources/settings.xml /root/.m2/settings.xml

COPY resources/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]