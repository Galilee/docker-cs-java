FROM maven:3.5-jdk-8-alpine
MAINTAINER Gabriel Malet <gmalet@galilee.fr>

ENV SONARLINT_VERSION 2.1.0.566
ENV SONARLINT sonarlint

RUN apk update \
    && apk add bash wget unzip curl git \
    && rm -rf /var/cache/apk/*

RUN wget https://bintray.com/sonarsource/Distribution/download_file?file_path=sonarlint-cli%2Fsonarlint-cli-${SONARLINT_VESRION}.zip -O /root/${SONARLINT}.zip \
    && unzip /root/${SONARLINT}.zip \
    && rm /root/${SONARLINT}

COPY resources/settings.xml /root/.m2/settings.xml

COPY resources/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]