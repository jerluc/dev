#!/bin/bash

set -e

CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker load < $CURRDIR/env.tar.gz
docker run -it jerluc/dev:latest
