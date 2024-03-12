#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt update
apt upgrade --yes
apt install --yes build-essential aria2 moreutils mold exa hyperfine bat

curl https://sh.rustup.rs --silent --show-error | sh -s -- -y --verbose  --default-toolchain none
HOME=/root # for some reason $HOME isn't set when user-data is run
source "$HOME/.cargo/env"

mkdir /snapshots
