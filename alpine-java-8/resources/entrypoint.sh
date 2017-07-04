#!/usr/bin/env bash

set -e

sed -i \
    -e "s/##deployer_user##/${NEXUS_USER}/g" \
    -e "s/##deployer_pwd##/${NEXUS_PASSWORD}/g" \
    /root/.m2/settings.xml

exec "$@"