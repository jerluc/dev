#!/bin/bash
set -e

if [ -z "$ROOT_PASS"]; then
    read -s -p "Root password:" ROOT_PASS
    echo ''
fi
if [ -z "$USERNAME"]; then
    read -p "Username:" USERNAME
fi
if [ -z "$PASSWORD"]; then
    read -s -p "Password:" PASSWORD
    echo ''
fi

docker build \
    --build-arg "ROOT_PASS=$ROOT_PASS" \
    --build-arg "USERNAME=$USERNAME" \
    --build-arg "PASSWORD=$PASSWORD" \
    -t jerluc/dev:latest .
