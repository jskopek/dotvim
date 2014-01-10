dotvim
======

Vim configuration files

Setup
=====

	git clone git@github.com:jskopek/dotvim.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

Setting up plugins

	cd ~/.vim
	git submodule init
	git submodule update

Plugins
=======

vim-sensible: A number of basic configuration options to make vim a little more sane
vim-flake8: Press the <F7> command to run the current file through the flake8 syntax and style checker

Requirements
============

Flake8: `sudo pip install flake8`
