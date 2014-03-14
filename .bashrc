# --------------------------------------------------------------------
# Utilities
# --------------------------------------------------------------------
alias ll='ls -l'
alias la='ls -al'
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
alias cr='tr "\r\n|\r|\n" "\r"'
alias lf='tr "\r\n|\r|\n" "\n"'
alias crlf='tr "\r\n|\r|\n" "\r\n"'
alias today='date '+%y%m%d''
alias yesterday='date -r $(expr $(date +%s) - 86400) "+%y%m%d"'
alias reload="exec $SHELL -l"

# --------------------------------------------------------------------
# Ruby
# --------------------------------------------------------------------
alias bx='bundle exec'
alias bxs='bundle exec spring'

# --------------------------------------------------------------------
# Git
# --------------------------------------------------------------------
alias ga='git add'
alias gb='git branch'
alias gci='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gr='git reset'
alias gs='git status'
alias gt='git tag'

# --------------------------------------------------------------------
# SVN
# --------------------------------------------------------------------
alias sa='svn add'
alias sci='svn commit'
alias sd='svn diff'
alias ss='svn status'
alias spe='svn propset svn:executable ON'
export SVN_EDITOR=vim

# --------------------------------------------------------------------
# CLI Tools
# --------------------------------------------------------------------
export PATH=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/bin:$PATH

