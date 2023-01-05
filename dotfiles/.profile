. ~/.functions

export PATH=/usr/local/bin:${PATH}
if is_bash_shell; then
  if [ -f ~/.bashrc ]; then
          . ~/.bashrc
  fi

  if [ -f ~/.bashrc_custom ]; then
          . ~/.bashrc_custom
  fi
else
  if [ -f ~/.zshrc ]; then
          . ~/.zshrc
  fi

  if [ -f ~/.zshrc_custom ]; then
          . ~/.zshrc_custom
  fi
fi

# MacPorts Installer addition on 2011-09-15_at_02:21:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.



# MacPorts Installer addition on 2012-08-31_at_14:46:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# For X11 and GhostView
export PATH=/usr/local/bin:${PATH}

# For UpTex In Terminal
export PATH=/Applcations/UpTeX.app/teTeX/bin:$PATH


# MacPorts Installer addition on 2014-10-20_at_12:58:32: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#Use Japanese on console
export LANG=ja_JP.UTF-8

# homebrew
if is_bash_shell; then
  export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"
else
  # Set PATH, MANPATH, etc., for Homebrew.
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# git_options
if is_bash_shell; then
  source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
  source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
else
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
  # source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.zsh
  fpath=(~/.zsh $fpath)
  zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
  autoload -Uz compinit && compinit
fi

# for Google Cloud SDK
if is_bash_shell; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
fi

# notification options
alias noti='terminal-notifier -message'

#bash_completion
if is_bash_shell; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
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

# for php7.2
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# for curl and OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
