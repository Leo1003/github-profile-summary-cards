#!/bin/sh
set -e

if [ -n "$1" ]; then
    GITHUB_USER="$1"
fi

if [ -z "$GITHUB_USER" ]; then
    echo "No Github account name is given" >&2
    exit 1
fi

exec "npm" "run" "run" "$GITHUB_USER"
