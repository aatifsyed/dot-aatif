#!/usr/bin/env bash
set -o errexit -o xtrace

cargo install --registry crates-io \
    bat \
    cargo-readme \
    exa \
    fd-find \
    flamegraph \
    git-delta \
    gping \
    loc \
    mdbook \
    most-recently \
    starship \
    tealdeer

cargo install -f --git https://github.com/jez/as-tree
