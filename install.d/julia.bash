#!/usr/bin/env bash
set -o errexit -o xtrace

python3 -m pip install --user pipx
pipx install jill
jill install --confirm
