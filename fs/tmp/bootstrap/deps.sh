#!/bin/bash

set -e

CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Sigh
emerge -uDV dev-lang/perl
# Basically we want to use git for syncing Portage, because fuck rsync
emerge -uDv dev-vcs/git

# Finally, download all the preconfigured dependencies
cat $CURRDIR/deps.txt | xargs emerge -uv
