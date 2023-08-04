if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.local/bin $PATH

function fish_right_prompt
    set -l toolbox (cat /etc/hostname)
    printf '%s' "$toolbox"
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /var/home/cappy/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

