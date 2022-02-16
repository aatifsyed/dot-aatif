#!/usr/bin/env bash
set -o errexit -o xtrace

curl https://pyenv.run | bash

python3 -m pip install --user --upgrade \
    argcomplete \
    black \
    flat_table \
    jupyterlab \
    pandas \
    pipx \
    ptpython \
    pyperclip \
    ranger \
    scapy \
    tables \
    xdg

pipx install --force asciinema
pipx install --force cookiecutter
pipx install --force git-identity
pipx install --force httpie
pipx install --force http-prompt
pipx install --force jc
pipx install --force jellex
pipx install --force jello
pipx install --force jtbl
pipx install --force kvsh
pipx install --force python-gitlab
pipx install --force thefuck
pipx install --force toml-sort
pipx install --force azure-interactive-shortcuts

