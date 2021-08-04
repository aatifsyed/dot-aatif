#!/usr/bin/env bash

DATA_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}"

# Edit path
export PATH="$PATH:~/.local/bin"
export PATH="$PATH:$DATA_FOLDER/dot-aatif/bin"

# `cd` should autocomplete for these folders
export CDPATH=$CDPATH:~:~/code:~/lab:~/sources:~/.local/share

export EDITOR=vim

# Java
export CLASSPATH="$CLASSPATH:$DATA_FOLDER/jars/antlr4.jar"
