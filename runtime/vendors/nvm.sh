if ! cmd-exists nvm; then
    nvm() {
        load-nvm
        nvm "$@"
    }
fi