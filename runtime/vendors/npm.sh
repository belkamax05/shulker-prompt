if ! cmd-exists npm; then
    npm() {
        load-nvm
        unset -f npm
        npm "$@"
    }
fi