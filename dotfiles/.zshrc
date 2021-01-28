# Oh My Zsh

## zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH="/Users/yui.ichiokatimee.co.jp/.oh-my-zsh"

## zsh-completions
fpath=(/usr/local/Cellar/zsh-completions/0.32.0/share/zsh-completions $fpath)
autoload -U compinit && compinit -u

ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Zsh

## https://gist.github.com/logicmd/4015090#gistcomment-1881695
USER=``

# Alias
alias y='yarn' 
alias cdw='cd ~/Documents/workspace' 
alias ow='open ~/Documents/workspace'
alias cdd='cd ~/Desktop' 
alias od='open ~/Desktop' 
alias reload='exec $SHELL -l'

# Functions

## https://qiita.com/redshoga/items/f80cf7a94ebfead5e42f
killport () {
  kill `lsof -ti tcp:$1`
}