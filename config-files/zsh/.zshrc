# Zsh, Oh My Zsh
## zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=~/.yarn/bin:$PATH

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

export AWS_SDK_LOAD_CONFIG=1
