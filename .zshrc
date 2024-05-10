autoload -Uz compinit
compinit

eval "$(oh-my-posh init zsh --config ~/tiwahu.omp.json)"

alias k="kubectl"
export PATH=/usr/local/go/bin:$PATH
export PATH=/home/cappy/.local/share/JetBrains/Toolbox/scripts:$PATH
export PATH=/home/cappy/.local/bin:$PATH
export PATH=$HOME/.istioctl/bin:$PATH
export PATH=~/go/bin:$PATH
export GPG_TTY=$TTY
source <(kubectl completion zsh)
compdef _kubectl k
source <(helm completion zsh)
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export GOPATH=$HOME/go
source "$HOME/.cargo/env"
source <(gh completion -s zsh)

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense,cobra' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
