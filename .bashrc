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
function d(){
  cd ~/develop/$1
  pwd
}

# --------------------------------------------------------------------
# Ruby
# --------------------------------------------------------------------
alias bi='bundle install'
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

