#!/bin/sh

# history
HISTFILE=~/.zsh_history

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# Use modern completion system
autoload -Uz compinit
compinit

# keybinds
bindkey '^ ' autosuggest-accept

# Exports
export PATH="$HOME/.local/bin":$PATH
# Pour Mac
export PATH="/opt/homebrew/bin:$PATH"

# ALIAS
alias ls="exa -G -F --group-directories-first"
alias l="ls"
alias sl="ls"