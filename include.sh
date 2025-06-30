__CURRENT_FILE=${(%):-%N}
SHULKER_PROMPT_PREFIX="$(format-project 'shulker-prompt')"
SHULKER_PROMPT_DIR=$(realpath $(dirname $__CURRENT_FILE))
SHULKER_PROMPT_DIST="$SHULKER_PROMPT_DIR/.shulker"
SHULKER_PROMPT_BUNDLE_PATH="$SHULKER_PROMPT_DIST/shulker.sh"
echo-debug "$SHULKER_PROMPT_PREFIX Shulker Prompt loading at $SHULKER_PROMPT_DIR"

if [[ -f "$SHULKER_PROMPT_BUNDLE_PATH" ]]; then
    source "$SHULKER_PROMPT_BUNDLE_PATH"
    trace-add "$SHULKER_PROMPT_PREFIX Shulker prompt bundle included from cache"
fi

create-folder "$SHULKER_PROMPT_DIST"
precompile-repo-root "$SHULKER_PROMPT_DIR" "$SHULKER_PROMPT_DIST"
compile-precompiled-bundle "$SHULKER_PROMPT_DIST" "$SHULKER_PROMPT_BUNDLE_PATH"

trace-add "$SHULKER_PROMPT_PREFIX $(format-success 'Shulker CLI Prompt started')"