local prefix="$SHULKER_PROMPT_PREFIX $(format-cmd 'yarn')"

if [[ $(command -v yarn) == "" ]]; then
    npm install -g yarn
    echo-success "Yarn installed"
fi
trace-add "$prefix Yarn loaded"