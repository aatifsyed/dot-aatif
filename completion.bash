#!/usr/bin/env bash

eval "$(floki completion bash)"
eval "$(starship completions bash)"
eval "$(most-recently completions bash)"
eval "$(procs --completion-out bash)"
# eval "$(kubectl completion bash)"

eval "$(activate-global-python-argcomplete3 --dest -)"
