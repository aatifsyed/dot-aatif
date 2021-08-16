#!/usr/bin/env bash
set -o errexit -o xtrace

python3 -m pip install --user --upgrade \
    argcomplete \
    black \
    flat_table \
    jupyterlab \
    pandas \
    pipx \
    ptpython \
    pyperclip \
    tables \
    xdg

pipx install git-identity
pipx install httpie
