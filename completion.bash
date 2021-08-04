#!/usr/bin/env bash

eval "$(floki completion bash)"
eval "$(starship completions bash)"
eval "$(most-recently completions bash)"

eval "$(activate-global-python-argcomplete --dest -)"
eval "$(register-python-argcomplete pipx)"
eval "$(register-python-argcomplete poetry)"
eval "$(register-python-argcomplete git-identity)"
eval "$(register-python-argcomplete http)"
