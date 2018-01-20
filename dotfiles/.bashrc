alias ls='ls -h'
alias ll='ls -l'
alias lla='ls -al'
alias lld='ll | grep ^d'
alias ll.='ls -ld .*'
# alias sublime='open -a "sublime text 2"'
alias sxampp='sudo /Applications/XAMPP/xamppfiles/xampp'
alias o='open .'

# sshfs options
alias sshfs='sshfs -o modules=iconv,from_code=UTF-8,to_code=UTF-8-MAC'
alias sshfs-gac='sshfs gac-drop:/home/admin/Dropbox/ /Users/iorin0225/Develop/sshfs/GlowACulture'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### LS convert to GLS(ls GNU ver)
alias ls='gls --color=auto'

eval $(gdircolors ~/.dircolors-solarized)
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

source ~/.git-completion.bash
source ~/.git-prompt.sh

export PS1='\[\e[32m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\n\$ '

alias rm-resource-folk="find . \( -name '.DS_Store' -or -name '._*' -or -name 'Thumbs.db' -or -name 'Desktop.ini' \) -delete -print"
alias ssh-gac22="ssh -L 13392:192.168.0.13:3389 root@glow-a-culture.com -p 22 -i ~/.ssh/id_rsa_gac22"

function rm-without() {
  find . -type f | sed 's/^\.\///' | grep -v ^$1$ | xargs rm -f
  find . -type d -empty -delete 
}

