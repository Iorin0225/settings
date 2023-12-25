path=`pwd`

. $path/.functions

# mv ~/.vimrc ~/.vimrc.orig
# mv ~/.tigrc ~/.tigrc.orig
ln -s $path/.vimrc ~/.vimrc
ln -s $path/.tigrc ~/.tigrc
ln -s $path/.pryrc ~/.pryrc

if is_bash_shell; then
  mv ~/.bash_profile ~/.bash_profile.orig
  mv ~/.bashrc ~/.bashrc.orig

  ln -s $path/.profile ~/.bash_profile
  ln -s $path/.bashrc ~/.bashrc
else
  # mv ~/.zprofile ~/.zprofile.orig
  # mv ~/.zshrc ~/.zshrc.orig

  ln -siv $path/.profile ~/.zprofile
  ln -siv $path/.zshrc ~/.zshrc
  echo 'Zsh!!'
fi

# mv ~/.aliases ~/.aliases.orig
ln -s $path/.aliases ~/.aliases

rm ~/.functions
ln -s $path/.functions ~/.functions

echo "Installed"


