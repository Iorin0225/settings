path=`pwd`

rm ~/.bash_profile
rm ~/.bashrc
rm ~/.vimrc
rm ~/.tigrc

ln -s $path/.bash_profile ~/.bash_profile
ln -s $path/.bashrc ~/.bashrc
ln -s $path/.vimrc ~/.vimrc
ln -s $path/.tigrc ~/.tigrc
