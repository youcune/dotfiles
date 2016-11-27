# --------------------------------------------------------------------
# anyenv
# --------------------------------------------------------------------
set -x PATH $HOME/.anyenv/bin $PATH
anyenv init - --no-rehash | source

# --------------------------------------------------------------------
# CLI Tools
# --------------------------------------------------------------------
set -x PATH $HOME/develop/dotfiles/bin $PATH

# --------------------------------------------------------------------
# Alias
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
alias zip="zip -x '*.DS_Store'"
function d
  if test (count $argv) -eq 0
    cd ~/develop
  else
    cd ~/develop/$argv[1]
  end
  pwd
end

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

alias mm='bundle exec middleman'
alias mmb='bundle exec middleman build'
alias mms='bundle exec middleman server'

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
alias ap='ansible-playbook'

