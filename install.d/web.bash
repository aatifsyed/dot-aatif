#!/usr/bin/env bash
set -o errexit -o xtrace

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py \
 | python -