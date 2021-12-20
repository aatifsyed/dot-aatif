#!/usr/bin/env bash
set -o errexit -o xtrace

cargo install --registry crates-io \
    bat \
    cargo-expand \
    cargo-prune \
    cargo-readme \
    cargo-tree \
    cargo-udeps \
    cargo-update \
    cargo-workspaces \
    critcmp \
    diskonaut \
    exa \
    fd-find \
    flamegraph \
    git-delta \
    gitui \
    gping \
    hyperfine \
    irust \
    loc \
    nu \
    mdbook \
    most-recently \
    starship \
    tealdeer \
    wait-until

cargo install -f --git https://github.com/jez/as-tree
