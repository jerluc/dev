#!/bin/bash
set -e
# Sigh
emerge -uDV dev-lang/perl
# Basically we want to use git for syncing Portage, because fuck rsync
emerge -uDv dev-vcs/git
