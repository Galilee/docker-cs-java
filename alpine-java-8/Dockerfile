FROM maven:3.5-jdk-8-alpine
MAINTAINER Gabriel Malet <gmalet@galilee.fr>

RUN yum -y install wget curl git bash openssh openssh-clients

COPY resources/settings.xml /root/.m2/settings.xml

COPY resources/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]