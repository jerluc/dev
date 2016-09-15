#!/bin/bash
set -e

IFS= read -s -p "Root password:" ROOT_PASS

echo "Building development image"
docker build --build-arg "ROOT_PASS=$ROOT_PASS" -t jerluc/dev:latest .

echo "Creating development container"
docker create -it --privileged --name dev jerluc/dev
