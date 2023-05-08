if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.local/bin $PATH

function fish_right_prompt
    set -l toolbox (basename "$TOOLBOX_PATH")
    printf '%s' "$toolbox"
end

thefuck --alias | source
