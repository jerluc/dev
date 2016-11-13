#!/bin/bash
set -e

pushd /tmp/bootstrap

source config.sh

./portage.sh
./users.sh
# ./deps.sh

popd
