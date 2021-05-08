# mac-config

- App Storeにサインイン

- Homebrewのインストール (https://brew.sh/index_ja)

- アプリのインストール (`brew bundle`)

- キーボードの設定
  - `システム環境設定` → `キーボード` → `入力ソース`に`ひらがな (Google)`, 
  `英数 (Google)`を追加
  - Karabiner-Elementsの設定
    ```
    PCキーボードの無変換キー: 英数キー
    PCキーボードの変換キー: かなキー
    left_command: left_option
    left_control: left_command
    left_option: left_control
    ```

- Alfredの設定
  - `Features` → `Web Bookmarks`の`Google Chrome Bookmarks`にチェック

- Logicool G HUB
  - https://gaming.logicool.co.jp/ja-jp/innovation/g-hub.html
  - 設定
    ```
    DPI: 1000
    ```

- git
  - 基本設定
    ```
    git config --global user.name "redshoga"
    git config --global user.email "yui.ichioka.contact@gmail.com"
    ```
  - 鍵設定
    ```
    ssh-keygen -t ed25519 -C "yui.ichioka.contact@gmail.com"
    cat ~/.ssh/id_ed25519.pub
    ```

    公開鍵の内容を登録 (https://github.com/settings/keys)

- Node
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

- Zsh, Oh My Zshの設定
  - フォントを移動 (インストールディレクトリに注意)
    ```
    cp -f /opt/homebrew/Cellar/ricty/4.1.1/share/fonts/Ricty*.ttf ~/Library/Fonts/ 
    fc-cache -vf
    ```

  - `.zshrc`にエイリアスを貼る
    ```
    ln -sf ~/Documents/workspace/mac-config/config-files/zsh/.zshrc ~/.zshrc
    ```

  - Oh My Zshのインストール
    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

- iTerm2
  - `General`→`Preferences`より設定ディレクトリを指定

- その他アプリ

  - Studio One 5
