path=`pwd`

rm ~/.bash_profile
rm ~/.bashrc
rm ~/.vimrc
rm ~/.tigrc
rm ~/.pryrc

ln -s $path/.bash_profile ~/.bash_profile
ln -s $path/.bashrc ~/.bashrc
ln -s $path/.vimrc ~/.vimrc
ln -s $path/.tigrc ~/.tigrc
ln -s $path/.pryrc ~/.pryrc
