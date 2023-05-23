#!/usr/bin/env bash

# Convenience
alias bashrc="source ~/.bashrc"
alias bf="bat \$(fzf)"
alias c="code ."
alias cdtemp="cd \$(mktemp -d)"
alias cf="code . \$(fzf --multi)"
alias datestr="date -u +\"%Y-%m-%dT%H-%M-%S%Z\""
alias f="fzf --multi"
alias hh="hasty-historian"
alias p="ptipython"
alias pipes="pipes-rs"
alias ocean="doctl"

# Config
alias exa="exa --all --extended --git --group --header --long --time modified"
alias gitlab="gitlab --output json --config-file \${XDG_CONFIG_HOME:-\$HOME/.config}/python-gitlab.cfg"
alias less="less --RAW-CONTROL-CHARS"
alias ncdu="ncdu --exclude=/mnt --exclude=/var/lib/docker"
alias whois="whois -H"

# Functional
alias copy="xclip -sel clip -in"
alias paste="xclip -sel clip -out"
alias antlr4='java -Xmx500M org.antlr.v4.Tool'
alias grun='java -Xmx500M org.antlr.v4.gui.TestRig'
