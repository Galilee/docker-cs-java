#!/usr/bin/env bash

set -e

# Check private key
if [ -z "$SSH_PRIVATE_KEY" ]; then
	echo >&2 'error: missing SSH_PRIVATE_KEY variable'
	exit 1
fi

eval $(ssh-agent -s)
ssh-add <(echo "$SSH_PRIVATE_KEY")
unset SSH_PRIVATE_KEY

# Replace nexus variables
sed -i \
    -e "s/##deployer_user##/${NEXUS_USER}/g" \
    -e "s/##deployer_pwd##/${NEXUS_PASSWORD}/g" \
    /root/.m2/settings.xml

exec "$@"