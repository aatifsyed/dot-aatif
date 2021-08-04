#!/usr/bin/env bash
set -o errexit -o xtrace

python3 -m pip install --user --upgrade \
    argcomplete \
    black \
    flat_table \
    jupyterlab \
    pandas \
    pipx \
    pyperclip \
    tables \
    xdg

pipx install git-identity
pipx install httpie
