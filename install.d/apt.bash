#!/usr/bin/env bash
set -o errexit -o xtrace

sudo apt update
sudo apt install --upgrade \
    bison \
    default-jre \
    flex \
    fzf \
    jq \
    python3-venv \
    ripgrep \
    shellcheck \
    sshpass \
    unzip
