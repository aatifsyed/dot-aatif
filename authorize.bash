#!/usr/bin/env bash

# https://docs.github.com/en/enterprise-server@3.0/github/authenticating-to-github/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows

SSH_ENV="$HOME/.ssh/agent.env"
function agent_load_env() {
    test -f "$SSH_ENV" && source "$SSH_ENV" >| /dev/null;
}
function agent_start() {
    (umask 077; ssh-agent >| "$SSH_ENV")
    source "$SSH_ENV" >| /dev/null
}

agent_load_env

agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)
# 0 Agent running with key
# 1 Agent running without key
# 2 Agent not running

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset SSH_ENV agent_run_state

if [[ -z $ART_CI_USER || -z $ART_CI_TOKEN ]]; then
    echo "authorize.bash: No login credentials, skipping docker login"
else
    NUM_AUTHED=$(jq '.auths | length' ~/.docker/config.json 2>/dev/null)
    if [ "$NUM_AUTHED" != 3 ]; then
        echo "$ART_CI_TOKEN" | docker login docker-local-mutable.metaswitch.com --username "$ART_CI_USER" --password-stdin
        echo "$ART_CI_TOKEN" | docker login docker-local-temp.metaswitch.com --username "$ART_CI_USER" --password-stdin
        echo "$ART_CI_TOKEN" | docker login docker-local.metaswitch.com --username "$ART_CI_USER" --password-stdin
    fi
fi
