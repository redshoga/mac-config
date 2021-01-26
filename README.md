# mac-config

1. App Storeにサインイン

2. Homebrewのインストール

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

3. アプリのインストール

```
brew bundle
```

4. システム環境設定の設定
5. iTerm2のGeneral->Preferencesより設定ディレクトリを指定


6. Nodeのインストール

```
mkdir ~/.nvm
code ~/.zprofile
```

```
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
```

```
source ~/.zprofile
```

```
nvm install v12.20.1
nvm alias default v12.20.1
npm install -g yarn
```

7. Zsh, Oh My Zshの設定

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
cp -f /usr/local/Cellar/ricty/4.1.1/share/fonts/Ricty*.ttf ~/Library/Fonts/ 
fc-cache -vf
```

```
code ~/.zshrc
```

`.zshrc`

```
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
alias reload='exec $SHELL -l'

# Functions

## https://qiita.com/redshoga/items/f80cf7a94ebfead5e42f
killport () {
  kill `lsof -ti tcp:$1`
}

```

8. Logi Optionsの設定

TODO

9. Alfredの設定

TODO

10. SSHまわりの設定

TODO

11. Gitまわりの設定

```
git config --global user.name "redshoga"
git config --global user.email "yui.ichioka.contact@gmail.com"
```

```
ssh-keygen -t ed25519 -C "yui.ichioka.contact@gmail.com"
cat ~/.ssh/id_ed25519.pub
```

99. その他アプリ

- Studio One 5

# TODO
- [ ] dotfilesの用意
- [ ] VSCodeのフォント設定
