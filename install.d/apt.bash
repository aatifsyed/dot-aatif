#!/usr/bin/env bash
set -o errexit -o xtrace

sudo apt update
sudo apt install --upgrade -y \
    ascii \
    bison \
    default-jre \
    flex \
    fzf \
    golang \
    inotify-tools \
    jq \
    nmap \
    ncdu \
    pstack \
    python3 \
    python3-venv \
    pv \
    ripgrep \
    ruby-full \
    shellcheck \
    sshpass \
    sysstat \
    traceroute \
    unzip \
    whois \
    wslu
