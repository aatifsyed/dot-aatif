#!/usr/bin/env bash

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

# Edit ssh config
function ssh-config() {
    code --new-window "$HOME/.ssh/config"
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

function cat-cert() {
    openssl x509 -text -noout -in "$@"
}

function make-ignored-folder() (
    set -o errexit -o nounset -o xtrace
    folder="${1:-ignoreme}"
    mkdir -p "$folder"
    printf '/*\n' > "$folder/.gitignore"
)

function bat-which() {
    bat "$(which "$1")"
}

function cdroot() {
    root=$(git rev-parse --show-toplevel)
    if [[ $? -eq 0 ]]; then
        cd -- "$root"
    fi
}

function f() {
    EDITOR="_fx" fc
}
