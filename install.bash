#!/usr/bin/env bash

set -o errexit -o xtrace

CONFIG_FOLDER="${XDG_CONFIG_HOME:-$HOME/.config}"
INSTALL_FOLDER="${XDG_DATA_HOME:-$HOME/.local/share}/dot-aatif"

##############################################
echo "Cloning repository to $INSTALL_FOLDER"
##############################################

if [ -d "$INSTALL_FOLDER" ]; then
    echo "Overwriting existing installation at $INSTALL_FOLDER"
    rm -rf "$INSTALL_FOLDER"
fi
git clone https://github.com/aatifsyed/dot-aatif.git "$INSTALL_FOLDER"


#####################
echo "Editing bashrc"
#####################

sed --in-place=.backup '/# <dot-aatif>/,/# <\/dot-aatif>/d' ~/.bashrc
cat << EOF >> ~/.bashrc
# <dot-aatif>
# $(date)
source "$INSTALL_FOLDER/bashrc"
# </dot-aatif>
EOF

########################
echo "Symlinking config"
########################

ln -s "$INSTALL_FOLDER/config" "$CONFIG_FOLDER"

##########################
echo "Installing programs"
##########################

run-parts --verbose --regex '^.*$' "$INSTALL_FOLDER/install.d"

####################################
cat << EOF
Installed!
Check $CONFIG_FOLDER for user config
EOF
####################################
