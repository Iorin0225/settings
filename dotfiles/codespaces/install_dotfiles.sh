path=`pwd`

rm ~/.bash_aliases
rm ~/.vimrc
rm ~/.tigrc
rm ~/.pryrc

ln -s $path/.bash_aliases ~/.bash_aliases
ln -s $path/../.vimrc ~/.vimrc
ln -s $path/../.tigrc ~/.tigrc
ln -s $path/../.pryrc ~/.pryrc

