# bashでもzshでも動くように書く
# --------------------------------------------------------------------
# Utilities
# --------------------------------------------------------------------
alias la='ls -ahl'
alias ll='ls -hl'

alias jis2sjis='nkf -Js'
alias jis2euc='nkf -Je'
alias jis2utf8='nkf -Jw'
alias sjis2jis='nkf -Sj'
alias sjis2euc='nkf -Se'
alias sjis2utf8='nkf -Sw'
alias euc2jis='nkf -Ej'
alias euc2sjis='nkf -Es'
alias euc2utf8='nkf -Ew'
alias utf82jis='nkf -Wj'
alias utf82sjis='nkf -Ws'
alias utf82euc='nkf -We'

alias lf='LC_CTYPE=C sed -e "s/
//g"'

alias today='days_since 0'
alias yesterday='days_since -1'
alias tomorrow='days_since 1'
alias reload="exec $SHELL -l"
function mkcd(){
  mkdir -p $1
  cd $1
  pwd
}
function rfind(){
  find . -name $1
}
function d(){
  cd ~/develop/$1
  pwd
}

alias zip="zip -x '*.DS_Store'"
alias ql='qlmanage -p "$@" >& /dev/null'

# --------------------------------------------------------------------
# Ruby
# --------------------------------------------------------------------
alias bi='bundle install'
alias bu='bundle update'
alias bx='bundle exec'
alias bxs='bundle exec spring'
alias r='bundle exec spring rails'
alias rc='bundle exec spring rails console'
alias rs='bundle exec spring rails server'
alias ss='bundle exec spring stop'

alias mm='bundle exec middleman'
alias mmb='bundle exec middleman build'
alias mms='bundle exec middleman server'

# --------------------------------------------------------------------
# Docker
# --------------------------------------------------------------------
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'

# --------------------------------------------------------------------
# Git
# --------------------------------------------------------------------
alias ga='git add'
alias gb='git branch'
alias gci='git commit'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpsu='git push-u'
alias grb='git rebase'
alias grbi='git rebase -i'
alias grshh='git reset --hard HEAD'
alias grs='git reset'
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
alias ap='ansible-playbook'
alias ad='ansible-doc'

# --------------------------------------------------------------------
# CLI Tools
# --------------------------------------------------------------------
export PATH=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/bin:$PATH
