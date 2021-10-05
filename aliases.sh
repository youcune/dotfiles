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
alias hg='history 0 | grep'

# --------------------------------------------------------------------
# Apps
# --------------------------------------------------------------------
alias mine='open -na "RubyMine.app" --args'

# --------------------------------------------------------------------
# Ruby
# --------------------------------------------------------------------
alias bi='bundle install'
alias bu='bundle update'
alias bx='bundle exec'
alias r='bin/rails'
alias rc='bin/rails console'
alias rs='bin/rails server'

alias mm='bundle exec middleman'
alias mmb='bundle exec middleman build'
alias mms='bundle exec middleman server'

# --------------------------------------------------------------------
# Docker
# --------------------------------------------------------------------
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dp='docker ps'
alias dk='docker kill'
alias dka='docker kill $(docker ps -q)'

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
alias gi='git init'
alias gl='git log'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpsu='git push-u'
alias grm='git rebase master'
alias gr='git reset'
alias grs='git reset --soft'
alias grh='git reset --hard'
alias grao='git remote add origin'
alias grso='git remote set-url origin'
alias gs='git status'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'

# --------------------------------------------------------------------
# Ansible
# --------------------------------------------------------------------
alias ap='ansible-playbook'
alias ad='ansible-doc'

# --------------------------------------------------------------------
# CLI Tools
# --------------------------------------------------------------------
export PATH=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/bin:$PATH
