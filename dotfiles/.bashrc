alias ls='ls -h'
alias ll='ls -l'
alias lla='ls -al'
alias lld='ll | grep ^d'
alias ll.='ls -ld .*'
# alias sublime='open -a "sublime text 2"'
alias o='open .'

alias rm='trash'

alias hs='history'

### git alias'
alias g='git'
alias tg='tig'
alias ts='tig status'
alias gc='git commit'
alias git-submodule-up-to-date='git submodule update --init --recursive'

### other alias
alias mysqlserver='mysql.server'

### LS convert to GLS(ls GNU ver)
# alias ls='gls --color=auto'

# eval $(gdircolors ~/.dircolors-solarized)
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

export PS1='\[\e[32m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\n\$ '

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
# GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# utils
alias rm-resource-folk="find . \( -name '.DS_Store' -or -name '._*' -or -name 'Thumbs.db' -or -name 'Desktop.ini' \) -delete -print"
alias rails-server-kill="cat tmp/pids/server.pid > /dev/null 2>/dev/null && (cat tmp/pids/server.pid 2> /dev/null | xargs kill -9 2> /dev/null && echo \"[OK] Rails server was killed...\" || echo \"[NG] Already exit...\") || echo \"[NG] Move to rails root directory path.\""

function rm-without() {
  find . -type f | sed 's/^\.\///' | grep -v ^$1$ | xargs rm -f
  find . -type d -empty -delete
}

function ps-grep() {
  watch -n .5 "ps aux | grep '$1'"
}

function process-count() {
  watch -n .5 "ps aux | grep  '$1' | wc -l"
}

alias rails-start-jst9="TZ=\"JST-9\" bin/rails s"

# rubocop
alias rubocop-diff='cat <(git ls-files -o --exclude-standard) <(git diff --name-only --diff-filter=d) | grep "\.\(rb\|rake\)" | grep -v schema | xargs rubocop -EA'

# notify
alias notify="echo 'Process Has Done.' | terminal-notifier -sound default"
