#!/usr/bin/env bash
set -o errexit -o xtrace

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install sbt
