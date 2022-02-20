#!/bin/bash
USER_UID=$(id -u)
USER_GID=$(id -g)
DOCKER_UID=$(awk -F':' '$1 ~ /docker/{print $3}' /etc/group)
if [ "x$DOCKER_UID" == "x" ]
then
    # Mac
    DOCKER_UID=$(id -u root)
fi

echo USER_UID=$USER_UID > .env
echo USER_GID=$USER_GID >> .env
echo DOCKER_UID=$DOCKER_UID >> .env
