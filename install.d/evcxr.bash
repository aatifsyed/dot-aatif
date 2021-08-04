#!/usr/bin/env bash
set -o errexit -o xtrace

rustup component add rust-src

cargo +nightly install --registry crates-io \
    evcxr_repl

# sudo apt install -y \
#     cmake \
#     build-essential

# cargo install evcxr_jupyter

# evcxr_jupyter --install
