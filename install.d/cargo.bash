#!/usr/bin/env bash
set -o errexit -o xtrace

cargo install --registry crates-io \
    bat \
    cargo-expand \
    cargo-readme \
    cargo-tree \
    cargo-workspaces \
    diskonaut \
    exa \
    fd-find \
    flamegraph \
    git-delta \
    gitui \
    gping \
    loc \
    mdbook \
    most-recently \
    starship \
    tealdeer \
    wait-until

cargo install -f --git https://github.com/jez/as-tree
