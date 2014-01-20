#!/bin/bash 

LIST='.vimrc .vim .bash_aliases .gitconfig'
if [ "$PWD" == "" ] ; then PWD=`pwd` ; fi
for f in $LIST ; do
	if [ -e ~/$f ] ; then
		mv ~/$f ~/$f.bak
	fi
	ln -s $PWD/$f ~/
done
