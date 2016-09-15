#!/bin/bash
set -e
cat deps.txt | xargs emerge -uv
