#!/usr/bin/env bash

DATA_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}"
GOPATH="${GOPATH:-$HOME/go}"

# Edit path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$DATA_FOLDER/dot-aatif/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/sources/protoc-22.0-linux-x86_64/bin:$PATH"
export PATH="$HOME/sources/flutter/bin:$PATH"

# `cd` should autocomplete for these folders
export CDPATH=$CDPATH:~:~/chainsafe:~/code:~/lab:~/sources:~/.local/share

export EDITOR=vim

# Java
export CLASSPATH="$CLASSPATH:$DATA_FOLDER/jars/antlr4.jar"

# Locale
export LC_ALL="C"

# Python
export PYTHONSTARTUP="$DATA_FOLDER/dot-aatif/pythonrc.py"

export CHROME_EXECUTABLE="google-chrome-stable"

