#!/usr/bin/env bash

# Convenience
alias bashrc="source ~/.bashrc"
alias bf="bat \$(fzf)"
alias c="code ."
alias cf="code . \$(fzf --multi)"
alias datestr="date -u +\"%Y-%m-%dT%H-%M-%S%Z\""
alias f="fzf --multi"
alias powershell="powershell.exe"
alias winpath="wslpath -w"

# Config
alias exa="exa --all --extended --git --group --header --long --time modified"
alias less="less --RAW-CONTROL-CHARS"
alias script="script --append --flush"
alias gping="gping --buffer=300"
alias whois="whois -H"

# Functional
alias copy="clip.exe"
alias paste="powershell.exe -Command Get-Clipboard -Format Text -TextFormatType Text"
alias antlr4='java -Xmx500M org.antlr.v4.Tool'
alias grun='java -Xmx500M org.antlr.v4.gui.TestRig'
