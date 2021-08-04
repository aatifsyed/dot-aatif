#!/usr/bin/env bash
set -o errexit -o xtrace

INSTALL_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}/jars/"

curl \
    --create-dirs \
    --output "$INSTALL_FOLDER/antlr4.jar" \
    https://www.antlr.org/download/antlr-4.9-complete.jar
