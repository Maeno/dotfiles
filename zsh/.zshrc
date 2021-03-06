# Created by newuser for 5.3.1

export PATH=/usr/local/bin:$PATH
plugins=(git osx brew)
fpath=(/usr/local/share/zsh-completions $fpath)


export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

export PATH=$HOME/.nodebrew/current/bin:$PATH

# 補完機能を有効にする
autoload -Uz compinit
compinit -u

# 文字コードの指定
export LANG=ja_JP.UTF-8
 
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# cdなしでディレクトリ移動
setopt auto_cd
 
# ビープ音の停止
setopt no_beep
 
# ビープ音の停止(補完時)
setopt nolistbeep
 
# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd
 
# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
 
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
 
# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups
 
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
 
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
 
# キーバインディングをemacs風に(-vはvim)
bindkey -e
# bindkey -v
 
# zsh-completionsの設定
fpath=(/path/to/homebrew/share/zsh-completions $fpath)
 
autoload -U compinit
compinit -u

