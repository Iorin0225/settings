path=`pwd`

. $path/.functions

# Back up only if a real (non-symlink) file exists and no backup yet.
backup() {
  if [ -e "$1" ] && [ ! -L "$1" ] && [ ! -e "$1.orig" ]; then
    mv "$1" "$1.orig"
  fi
}

ln -sf $path/.vimrc ~/.vimrc
ln -sf $path/.tigrc ~/.tigrc
ln -sf $path/.pryrc ~/.pryrc

if is_bash_shell; then
  backup ~/.bash_profile
  backup ~/.bashrc

  ln -sf $path/.profile ~/.bash_profile
  ln -sf $path/.bashrc ~/.bashrc
else
  backup ~/.zprofile
  backup ~/.zshrc

  ln -sf $path/.profile ~/.zprofile
  ln -sf $path/.zshrc ~/.zshrc
  echo 'Zsh!!'
fi

backup ~/.aliases
ln -sf $path/.aliases ~/.aliases

ln -sf $path/.functions ~/.functions

echo "Installed"
