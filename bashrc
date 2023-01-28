# Style
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u \[\e[01;32m\]\w \[\e[01;94m\]\$(parse_git_branch)\[\e[01;00m\]$ "

# Path

# Pour Mac
export PATH="/opt/homebrew/bin:$PATH"

#color for man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Aliases
alias ls="exa -G -F --group-directories-first"
alias l="ls"
alias sl="ls"
alias p3="python3"
alias p="python"

# SSH
alias pubkey="cat ~/.ssh/id_rsa.pub"
