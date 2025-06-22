local prefix="$SHULKER_PROMPT_PREFIX $(format-cmd 'nvm')"

if [[ ! -d "$NVM_DIR" ]]; then
    echo-info "NVM does not exist at $NVM_DIR, installing..."
    PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash'
fi
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm ( --no-use)
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
trace-add "$prefix NVM loaded"
