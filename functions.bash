#!/usr/bin/env bash

# Copy the result of the previous command
function copy-that() {
    local -r previous_command="$(fc -ln -1)" # readonly variable
    bash -c "$previous_command" | copy
}

# Background tasks
function gui() {
    "$@" 2>/dev/null &
}

# Is this variable set?
function isset() {
    if [[ -v $1 ]]; then
        # https://www.linuxjournal.com/content/tech-tip-dereference-variable-names-inside-bash-functions
        echo "$1" is set to "${!1}"
    else
        echo "$1" is not set
    fi
}

# Display a gui message
function msg() {
    msg.exe "*" "$@"
}

# Print out the path
function path() {
    echo "$PATH" | tr ':' '\n' | sort
}

# Open something with Windows
function winopen() {
    powershell.exe -Command "start $*"
}
