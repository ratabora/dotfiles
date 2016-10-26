source ~/.riotrc
source ~/.localrc

# https://github.com/Yleisradio/homebrew-terraforms
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi

# zsh bindings
bindkey -v
bindkey '^R' history-incremental-search-backward

# default editor
export EDITOR='vim'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

# antibody zsh
source <(antibody init)
antibody bundle <<EOBUNDLES
zsh-users/zsh-history-substring-search
zsh-users/zsh-syntax-highlighting
mafredri/zsh-async
sindresorhus/pure
#jreese/zsh-titles
TBSliver/zsh-plugin-tmux-simple
EOBUNDLES
