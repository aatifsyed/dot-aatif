#!/usr/bin/env bash

eval "$(floki completion bash)"
eval "$(starship completions bash)"
eval "$(most-recently completions bash)"
eval "$(procs --completion-out bash)"
# eval "$(kubectl completion bash)"

eval "$(activate-global-python-argcomplete3 --dest -)"
eval "$(doctl completion bash)"

for bcfile in ~/.bash_completion.d/* ; do
  [ -f "$bcfile" ] && source "$bcfile"
done

complete -F _complete_alias ocean
complete -c bat-which
