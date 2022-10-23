path=`pwd`

rm ~/.bash_aliases
rm ~/.vimrc
rm ~/.tigrc

ln -s $path/.bash_aliases ~/.bash_aliases
ln -s $path/../.vimrc ~/.vimrc
ln -s $path/../.tigrc ~/.tigrc

