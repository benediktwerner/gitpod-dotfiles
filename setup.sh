#!/usr/bin/env bash

set -eu;

if test ! -e /ide/bin/gitpod-code || test ! -v GITPOD_REPO_ROOT; then {
    printf 'error: This script is meant to be run on Gitpod, quiting...\n' && exit 1;
} fi

_source_dir="$(readlink -f "$0")" && _source_dir="${_source_dir%/*}";
mv "$_source_dir/.gitconfig" "$HOME/.gitconfig"
mv "$_source_dir/.gitignore" "$HOME/.gitignore"
