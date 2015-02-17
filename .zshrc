# 少し凝った zshrc
# License : MIT
# http://mollifier.mit-license.org/
# https://gist.github.com/mollifier/4979906

########################################
# 環境変数
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# プロンプト
# 1行表示
# PROMPT="%~ %# "
# 2行表示
PROMPT="%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~
%# "


# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

########################################
# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


########################################
# vcs_info

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"


########################################
# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# 濁点・半濁点の扱い
setopt combining_chars

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# = の後はパス名として補完する
setopt magic_equal_subst

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 補完候補が複数あるときに自動的に一覧表示する
setopt auto_menu

# 高機能なワイルドカード展開を使用する
setopt extended_glob

########################################
# キーバインド

# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward

########################################
# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi



########################################
# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        ;;
esac

# vim:set ft=zsh:

# --------------------------------------------------------------------
# Utilities
# --------------------------------------------------------------------
alias la='ls -al'
alias ll='ls -l'
alias utf82euc='iconv -f UTF-8 -t EUC-JP'
alias ut82sjis='iconv -f UTF-8 -t SHIFT-JIS'
alias utf82jis='iconv -f UTF-8 -t ISO-2022-JP'
alias euc2utf8='iconv -f EUC-JP -t UTF-8'
alias euc2sjis='iconv -f EUC-JP -t SHIFT-JIS'
alias euc2jis='iconv -f EUC-JP -t ISO-2022-JP'
alias sjis2utf8='iconv -f SHIFT-JIS -t UTF-8'
alias sjis2euc='iconv -f SHIFT-JIS -t EUC-JP'
alias sjis2jis='iconv -f SHIFT-JIS -t ISO-2022-JP'
alias jis2utf8='iconv -f ISO-2022-JP -t UTF-8'
alias jis2sjis='iconv -f ISO-2022-JP -t SHIFT-JIS'
alias jis2euc='iconv -f ISO-2022-JP -t EUC-JP'
alias lf='LC_CTYPE=C sed -e "s///g"'
alias today='days_since 0'
alias yesterday='days_since -1'
alias tomorrow='days_since 1'
alias reload="exec $SHELL -l"
function mkcd(){
  mkdir -p $1
  cd $1
  pwd
}
function fromto(){
  grep -A 1000000 "$1" "$3" | grep -B 1000000 "$2"
}
function rfind(){
  find . -name $1
}

# --------------------------------------------------------------------
# Ruby
# --------------------------------------------------------------------
alias bi='bundle install --path vendor/bundle --jobs=4'
alias bx='bundle exec'
alias bxrc='bundle exec rails console'
alias bxrs='bundle exec rails server'
alias bxs='bundle exec spring'
alias bxsrc='bundle exec spring rails console'
alias bxsrs='bundle exec spring rails server'

# --------------------------------------------------------------------
# Git
# --------------------------------------------------------------------
alias ga='git add'
alias gb='git branch'
alias gci='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpsu='git push-u'
alias gr='git reset'
alias grhh='git reset --hard HEAD'
alias gs='git status'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'
alias gt='git tag'

# --------------------------------------------------------------------
# SVN
# --------------------------------------------------------------------
alias sa='svn add'
alias sci='svn commit'
alias sd='svn diff'
alias sr='svn revert'
alias ss='svn status'
alias spe='svn propset svn:executable ON'
export SVN_EDITOR=vim

# --------------------------------------------------------------------
# Ansible
# --------------------------------------------------------------------
alias ap='ansible-playbook --vault-password-file ~/.ansiblepasswd'
alias av='ansible-vault --vault-password-file ~/.ansiblepasswd'
alias avc='ansible-vault --vault-password-file ~/.ansiblepasswd encrypt'
alias avd='ansible-vault --vault-password-file ~/.ansiblepasswd decrypt'
alias ave='ansible-vault --vault-password-file ~/.ansiblepasswd edit'

# --------------------------------------------------------------------
# CLI Tools
# --------------------------------------------------------------------
export PATH=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/bin:$PATH

