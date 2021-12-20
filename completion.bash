#!/usr/bin/env bash

eval "$(floki completion bash)"
eval "$(starship completions bash)"
eval "$(most-recently completions bash)"

eval "$(activate-global-python-argcomplete --dest -)"
eval "$(register-python-argcomplete cookiecutter)"
eval "$(register-python-argcomplete git-identity)"
eval "$(register-python-argcomplete gitlab)"
eval "$(register-python-argcomplete http)"
eval "$(register-python-argcomplete jc)"
eval "$(register-python-argcomplete jellex)"
eval "$(register-python-argcomplete jello)"
eval "$(register-python-argcomplete jtbl)"
eval "$(register-python-argcomplete kv)"
eval "$(register-python-argcomplete kvv)"
eval "$(register-python-argcomplete pipx)"
eval "$(register-python-argcomplete poetry)"
eval "$(register-python-argcomplete toml-sort)"

