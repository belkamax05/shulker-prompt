if ! cmd-exists yarn; then
    yarn() {
        load-nvm
        yarn "$@"
    }
fi