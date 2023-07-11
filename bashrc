#!/usr/bin/env bash
# Prompt
function set_win_title(){ echo -ne "\033]0; $(basename "$PWD") \007";}
export starship_precmd_user_func="set_win_title"
eval "$(starship init bash)"

CONFIG_FOLDER="${XDG_CONFIG_HOME:-$HOME/.config}/dot-aatif"
INSTALL_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}/dot-aatif"

# Order dependencies up front
if [ -f "$CONFIG_FOLDER/tokens.bash" ]; then
    source "$CONFIG_FOLDER"/tokens.bash
fi

# shellcheck source=./variables.bash
source "$INSTALL_FOLDER/variables.bash"

# Now other scripts
# shellcheck source=./aliases.bash
source "$INSTALL_FOLDER/aliases.bash"
# shellcheck source=./authorize.bash
source "$INSTALL_FOLDER/authorize.bash"
# shellcheck source=./completion.bash
source "$INSTALL_FOLDER/completion.bash"
# shellcheck source=./functions.bash
source "$INSTALL_FOLDER/functions.bash"
