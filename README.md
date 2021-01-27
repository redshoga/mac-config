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
ln -sf ~/Documents/workspace/mac-config/dotfiles/.zshrc ~/.zshrc
```

8. Logi Optionsの設定

TODO

9. Alfredの設定

Features -> Web Bookmarks

- [x] Google Chrome Bookmarks

10. Gitまわりの設定

```
git config --global user.name "redshoga"
git config --global user.email "yui.ichioka.contact@gmail.com"
```

```
ssh-keygen -t ed25519 -C "yui.ichioka.contact@gmail.com"
cat ~/.ssh/id_ed25519.pub
ssh-add ~/.ssh/id_ed25519
```

11. Karabinerの設定

```
ln -sf ~/Documents/workspace/mac-config/karabiner.json ~/.config/karabiner/karabiner.json
```

99. その他アプリ

- Studio One 5
