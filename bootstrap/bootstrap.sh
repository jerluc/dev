#!/bin/bash
set -e

pushd /tmp/bootstrap

source config.sh

./users.sh
./portage.sh
# ./deps.sh

popd
