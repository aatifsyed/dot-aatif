#!/usr/bin/env bash

DATA_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}"
GOPATH="${GOPATH:-$HOME/go}"

# Edit path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$DATA_FOLDER/dot-aatif/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"

# `cd` should autocomplete for these folders
export CDPATH=$CDPATH:~:~/code:~/lab:~/sources:~/.local/share

export EDITOR=vim

# Java
export CLASSPATH="$CLASSPATH:$DATA_FOLDER/jars/antlr4.jar"

# Locale
export LC_ALL="C"

# Python
export PYTHONSTARTUP="$DATA_FOLDER/dot-aatif/pythonrc.py"
