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
    scapy \
    tables \
    xdg

pipx install --force git-identity
pipx install --force httpie
pipx install --force python-gitlab
pipx install --force thefuck
pipx install --force jc
pipx install --force jellex
pipx install --force jello
pipx install --force jtbl
pipx install --force cookiecutter

