# Zsh, Oh My Zsh
## zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## zsh-completions
fpath=(/usr/local/Cellar/zsh-completions/0.32.0/share/zsh-completions $fpath)
autoload -U compinit && compinit -u

# Custom default .zshrc
export ZSH="/Users/redshoga/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Alias
alias y='yarn' 
alias cdw='cd ~/Documents/workspace' 
alias reload='exec $SHELL -l'

# Functions
## https://qiita.com/redshoga/items/f80cf7a94ebfead5e42f
killport () { kill `lsof -ti tcp:$1` }