#!/usr/bin/env bash
set -o errexit -o xtrace

sudo apt update
sudo apt install --upgrade -y \
    bison \
    default-jre \
    flex \
    fzf \
    jq \
    python3 \
    python3-venv \
    pv \
    ripgrep \
    shellcheck \
    sshpass \
    unzip \
    wslu
