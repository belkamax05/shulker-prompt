local prefix="$SHULKER_PROMPT_PREFIX $(format-cmd 'brew')"

if [[ $(command -v brew) == "" ]]; then
    local brewEnvPath=""
    is-linux && brewEnvPath="/home/linuxbrew/.linuxbrew/bin/brew"
    is-darwin && brewEnvPath="/opt/homebrew/bin/brew"
    echo-debug "$prefix Brew environment path: $brewEnvPath"
    [[ ! -f $brewEnvPath ]] && s-install-brew
    eval "$($brewEnvPath shellenv)"
    trace-add "$prefix Brew loaded now"
else
    trace-add "$prefix Brew was already loaded"
fi