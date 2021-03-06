export PATH=/usr/local/bin:${PATH}
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

if [ -f ~/.bashrc_custom ]; then
        . ~/.bashrc_custom
fi
##
# Your previous /Users/osada/.bash_profile file was backed up as /Users/osada/.bash_profile.macports-saved_2011-09-15_at_02:21:18
##

# MacPorts Installer addition on 2011-09-15_at_02:21:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/iorin0225/.bash_profile file was backed up as /Users/iorin0225/.bash_profile.macports-saved_2012-08-31_at_14:46:48
##

# MacPorts Installer addition on 2012-08-31_at_14:46:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# For X11 and GhostView
export PATH=/usr/local/bin:${PATH}

# For UpTex In Terminal
export PATH=/Applcations/UpTeX.app/teTeX/bin:$PATH

##
# Your previous /Users/iorin0225/.bash_profile file was backed up as /Users/iorin0225/.bash_profile.macports-saved_2014-10-20_at_12:58:32
##

# MacPorts Installer addition on 2014-10-20_at_12:58:32: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#Use Japanese on console
export LANG=ja_JP.UTF-8

# homebrew
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"

# git_options
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# notification options
alias noti='terminal-notifier -message'

#bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# anyenv options
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - --no-rehash)"
for D in `ls $HOME/.anyenv/envs`
do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
done

# pyenv-virtualenv
# MEMO: this is too heavy!!
if which pyenv > /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi

# for Homebrew errors with pyenv
alias brew="env PATH=${PATH/\/Users\/takc923\/\.phpenv\/shims:/} brew"

# for Java
# export JAVA_HOME=`/usr/libexec/java_home -v 9

# for Android
export ANDROID_HOME='/Users/iorin0225/Library/Android/sdk'
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH="$HOME/.rbenv/bin:$PATH"

