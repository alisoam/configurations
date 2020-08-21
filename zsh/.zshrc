source ~/.antigen.zsh


export ZSH_THEME=""
antigen use oh-my-zsh


antigen bundle sindresorhus/pure
zstyle ':prompt:pure:prompt:success' color green
zstyle ':prompt:pure:prompt:error' color red


antigen bundle mafredri/zsh-async
antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

[[ $TERM != "screen" ]] && exec tmux
alias reset='reset;tmux clear'
alias vim=nvim
alias gdb=gdb-multiarch

alias k='kubectl'
alias kg='kubectl get'
source <(kubectl completion zsh)
complete -F __start_kubectl k
