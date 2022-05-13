#
# ~/.zshrc
#

catfetch
NEWLINE=$'\n'
PROMPT="%F{cyan}%~%f${NEWLINE}%F{green}Δ%f "

export PATH="$PATH:$HOME/.local/bin"
export GOPATH="$HOME/go"
export aururl="https://aur.archlinux.org"
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.spicetify
export FZF_DEFAULT_OPTS='
  --height 13'
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -A"
alias tree="lsd --tree"
