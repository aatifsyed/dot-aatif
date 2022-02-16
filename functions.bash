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
function popup() {
    msg.exe "*" "$@"
}

# Print out the path
function path() {
    echo "$PATH" | tr ':' '\n' | sort
}

# Edit ssh config
function ssh-config() {
    code --new-window "$HOME/.ssh/config"
}

# Open something with Windows
function winopen-file() {
    local winpath
    winpath="$(wslpath -w "$1")"
    wslview "$winpath"
}

# Windows home
function winhome() {
    local winpath
    local wslpath
    winpath="$(wslvar USERPROFILE)"
    wslpath="$(wslpath "$winpath")"
    echo "$wslpath"
}

# Read in from the terminal
function from_terminal() {
    local var
    read -rp "from_terminal: " var </dev/tty
    echo "${var}"
}

# Override script with some defaults and set an environment variable for starship to pick up
function script() {
    local filename
    filename="typescript"

    for argument in "$@"; do
        if [[ ! $argument == "$0" ]] && [[ ! $argument =~ ^-.* ]]; then
            # Script will use the first non-flag argument as the filename.
            # Skip over $0 - it contains the shell
            filename=$argument
            break
        fi
    done

    TYPESCRIPT="$filename" command script --append --flush "$@"
}

function asciicast2gif() {
    local src
    local dest
    src="${1:?Must provide a relative source}"
    dest="${2:?Must provide a relative dest}"
    docker run --rm --user "$(id -u):$(id -g)" -v "$PWD:/data" asciinema/asciicast2gif "/data/$src" "/data/$dest"
}
