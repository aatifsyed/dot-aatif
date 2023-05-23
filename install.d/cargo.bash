#!/usr/bin/env bash
set -o errexit -o xtrace

cargo install cargo-binstall

cargo install \
    bat \
    cargo-edit \
    cargo-expand \
    cargo-prune \
    cargo-readme \
    cargo-tree \
    cargo-udeps \
    cargo-update \
    cargo-watch \
    cargo-workspaces \
    confirm-rs \
    critcmp \
    diskonaut \
    du-dust \
    dua-cli \
    exa \
    fd-find \
    flamegraph \
    floki \
    git-delta \
    gitui \
    gping \
    html2md \
    hyperfine \
    irust \
    jless \
    joshuto \
    loc \
    nu \
    mdbook \
    most-recently \
    procs \
    rust-script \
    sd \
    starship \
    tealdeer \
    to-html \
    wait-until \
    xh \
    xplr

cargo install -f --git https://github.com/jez/as-tree
cargo install -f --git https://github.com/lhvy/pipes-rs
